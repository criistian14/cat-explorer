import 'package:cat_explorer/config/base_errors.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/injection/injection_container.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>()..add(const HomeEvent.loadedBreeds()),
      child: Scaffold(
        floatingActionButton: BlocBuilder<HomeBloc, HomeState>(
          buildWhen: (previous, current) =>
              previous.scrollPosition != current.scrollPosition,
          builder: (context, state) {
            if (state.scrollPosition <= 0) {
              return const SizedBox.shrink();
            }

            return FloatingActionButton(
              onPressed: () {
                context.read<HomeBloc>().add(const HomeEvent.scrolledToTop());
              },
              child: const Icon(CupertinoIcons.arrow_uturn_up),
            );
          },
        ),
        body: SafeArea(
          child: BlocConsumer<HomeBloc, HomeState>(
            listenWhen: (previous, current) =>
                current.status != previous.status && current.error != null,
            listener: (context, state) {
              if (state.status != HomeStatus.failure) return;
              final error = state.error;
              if (error == null) return;

              if (error is ErrorSnackbarBase) {
                sl<UiFeedbackService>().showSnackBarError(
                  context,
                  error: error,
                );
              }

              if (error is ErrorAlertBase) {
                sl<UiFeedbackService>().showAlertError(
                  context,
                  error: error,
                );
              }
            },
            buildWhen: (previous, current) => previous.status != current.status,
            builder: (context, state) {
              Widget child = const Shimmer(child: HomeView());
              if (sl.isTestMode) child = const HomeView();

              if (state.status == HomeStatus.failure) {
                child = ErrorInfo(
                  onRetry: () {
                    context
                        .read<HomeBloc>()
                        .add(const HomeEvent.loadedBreeds());
                  },
                );
              }

              return AnimatedSwitcher(
                duration: 600.ms,
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScrollListener() {
    if (!mounted) return;

    final position = _scrollController.position.pixels;

    if (position >= 20.h(context)) {
      context.read<HomeBloc>().add(HomeEvent.scrollChanged(position));
    } else {
      context.read<HomeBloc>().add(const HomeEvent.scrollChanged(0));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;

    final status = context.select((HomeBloc bloc) => bloc.state.status);
    final isLoading =
        status == HomeStatus.initial || status == HomeStatus.loading;

    return MultiBlocListener(
      listeners: [
        BlocListener<HomeBloc, HomeState>(
          listenWhen: (previous, current) =>
              previous.shouldScrollToTop != current.shouldScrollToTop,
          listener: (context, state) {
            if (!state.shouldScrollToTop) return;

            _scrollController.animateTo(
              0,
              duration: 300.milliseconds,
              curve: Curves.easeIn,
            );
          },
        ),

        // * Update breeds of search
        BlocListener<HomeBloc, HomeState>(
          listenWhen: (previous, current) => previous.breeds != current.breeds,
          listener: (context, state) {
            context
                .read<SearchBloc>()
                .add(SearchEvent.breedsChanged(state.breeds));
          },
        ),
      ],
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // * Title
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w(context),
                vertical: 2.h(context),
              ),
              child: Text(
                l10n.title_cats,
                style: textTheme.displayMedium,
              )
                  .animate()
                  .fadeIn(duration: 800.milliseconds)
                  .slideY(duration: 300.milliseconds),
            ),
          ),

          // * Search field
          const SliverToBoxAdapter(
            child: BreedSearchField(),
          ),

          // * Categories
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.w(context),
                right: 5.w(context),
                top: 2.5.h(context),
                bottom: 1.h(context),
              ),
              child: Text(
                l10n.explore_cat_categories,
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ).animate(delay: 700.ms).fadeIn(),
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (previous, current) =>
                previous.categories != current.categories ||
                previous.categorySelected != current.categorySelected,
            builder: (context, state) {
              return SliverToBoxAdapter(
                child: MainCategoriesBreed(
                  isLoading: isLoading,
                  categories: state.categories,
                  categorySelected: state.categorySelected,
                  onCategoryPressed: (category) {
                    context
                        .read<HomeBloc>()
                        .add(HomeEvent.categorySelected(category));
                  },
                ),
              );
            },
          ),

          // * Breed List
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.w(context),
                right: 5.w(context),
                top: 2.5.h(context),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.cat_breed_list,
                    style: textTheme.headlineMedium,
                  ),
                ],
              ),
            ).animate(delay: 800.ms).fadeIn(),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (previous, current) =>
                previous.breeds != current.breeds ||
                previous.categorySelected != current.categorySelected,
            builder: (context, state) {
              return BreedSliverList(
                isLoading: isLoading,
                breeds: state.categorySelected != null
                    ? state.breedsBelongToCategory
                    : state.breeds,
              );
            },
          ),
        ],
      ),
    );
  }
}
