import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/features/flutter_repo/repository/data_classes/flutter_repo_response.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_detail/screens/flutter_repo_detail_page.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_state.dart';

import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/pages/flutter_repo_list_page.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_event.dart'
    as search;
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_event.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_notifier.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_snackbars.dart';
import 'package:gitcentral/shared/utils/custom_widgets/infinite_scrolling.dart';
import 'package:gitcentral/shared/utils/themes/light_theme.dart';

class FlutterRepoSearchResult extends ConsumerStatefulWidget {
  final TextEditingController? textController;
  const FlutterRepoSearchResult({
    super.key,
    this.textController,
  });

  @override
  ConsumerState<FlutterRepoSearchResult> createState() =>
      _FlutterRepoSearchResultState();
}

class _FlutterRepoSearchResultState
    extends ConsumerState<FlutterRepoSearchResult> {
  FlutterRepoSearchNotifier get flutterSearchRepoNotifier =>
      ref.read(flutterRepoSearchNotifierProvider.notifier);
  final scroll = ScrollController();
  bool showLoading = false;

  void loadMoreItems() async {
    if (!mounted) return;
    setState(() {
      showLoading = true;
    });
    final result = await flutterSearchRepoNotifier.mapEventsToState(
        search.FetchMoreItems(query: widget.textController?.text));

    if (result.result == false) {
      if (result.errorMessage != null ||
          (result.errorMessage ?? '').isNotEmpty) {
        if (!mounted) return;
        showErrorSnackBar(context, message: result.errorMessage);
      } else {
        if (!mounted) return;
        showErrorSnackBar(context);
      }
    } else if (result.result == null) {
      if (result.errorMessage != null ||
          (result.errorMessage ?? '').isNotEmpty) {
        if (!mounted) return;
        showWarningSnackBar(context, message: result.errorMessage);
      } else {
        /// Result empty
        /// Do nothing
      }
    }

    if (!mounted) return;
    setState(() {
      showLoading = false;
    });
  }

  void navigationDelegate(FlutterRepoResponse? repo) {
    Navigator.of(context).push(
      FlutterRepoDetailPage.route(repoDetail: repo),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(flutterRepoSearchNotifierProvider);
    return Stack(
      children: [
        if (state.status is ApiLoaded &&
            (state.flutterRepoList ?? []).isNotEmpty)
          RefreshIndicator(
            onRefresh: () async => flutterSearchRepoNotifier.mapEventsToState(
                SearchRepo(query: widget.textController?.text)),
            child: InfiniteScrolling(
              scrollController: scroll,
              itemsLoading: showLoading,
              // loadItems: () async => ((state.flutterRepoList?.length ?? 0) > 10)
              //     ? loadMoreItems()
              //     : null,
              loadItems: () async => loadMoreItems(),
              child: ListView.builder(
                cacheExtent: 64,
                addAutomaticKeepAlives: true,
                physics: const ClampingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                controller: scroll,
                shrinkWrap: true,
                itemCount: state.flutterRepoList?.length,
                itemBuilder: (context, index) {
                  final searchResult = state.flutterRepoList?[index];
                  return GestureDetector(
                    onTap: () => navigationDelegate(searchResult),
                    child: card(
                      // scrollController: scroll,
                      name: searchResult?.fullName ?? '-',
                      description: searchResult?.description ?? '-',
                    ),
                  );
                },
              ),
            ),
          )
        else if ((state.status is ApiLoaded &&
            (state.flutterRepoList ?? []).isEmpty)) ...[
          LayoutBuilder(
            builder: (context, cons) {
              return RefreshIndicator(
                onRefresh: () async =>
                    flutterSearchRepoNotifier.mapEventsToState(
                        SearchRepo(query: widget.textController?.text)),
                child: ListView(
                  physics: const ClampingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  shrinkWrap: true,
                  children: [
                    Container(
                      constraints: BoxConstraints(minHeight: cons.maxHeight),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text('Result is empty'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ] else if (state.status is ApiInitial) ...[
          LayoutBuilder(
            builder: (context, cons) {
              return RefreshIndicator(
                onRefresh: () async =>
                    flutterSearchRepoNotifier.mapEventsToState(
                        SearchRepo(query: widget.textController?.text)),
                child: ListView(
                  physics: const ClampingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  shrinkWrap: true,
                  children: [
                    Container(
                      constraints: BoxConstraints(minHeight: cons.maxHeight),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Center(
                          //   child: Container(),
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ] else if (state.status is ApiServerError ||
            state.status is ApiOtherException ||
            state.status is ApiLoading) ...[
          LayoutBuilder(
            builder: (context, cons) {
              return RefreshIndicator(
                onRefresh: () => flutterSearchRepoNotifier.mapEventsToState(
                    SearchRepo(query: widget.textController?.text)),
                child: ListView(
                  physics: const ClampingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  shrinkWrap: true,
                  children: [
                    Container(
                      constraints: BoxConstraints(minHeight: cons.maxHeight),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child:
                                CircularProgressIndicator(color: kPrimaryColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ],
    );
  }
}
