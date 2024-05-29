// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/features/flutter_repo/repository/data_classes/flutter_repo_response.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_detail/screens/flutter_repo_detail_page.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_notifier.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_state.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_snackbars.dart';
import 'package:gitcentral/shared/utils/custom_widgets/fade_translate_widget.dart';
import 'package:gitcentral/shared/utils/custom_widgets/infinite_scrolling.dart';
import 'package:gitcentral/shared/utils/custom_widgets/rounded_container.dart';
import 'package:gitcentral/shared/utils/themes/light_theme.dart';

class FlutterRepoListPage extends ConsumerStatefulWidget {
  const FlutterRepoListPage({super.key});

  @override
  ConsumerState<FlutterRepoListPage> createState() =>
      _FlutterRepoListPageState();
}

class _FlutterRepoListPageState extends ConsumerState<FlutterRepoListPage> {
  FlutterRepoNotifier get flutterRepoNotifier =>
      ref.read(flutterRepoNotifierProvider.notifier);
  final scroll = ScrollController();
  bool showLoading = false;
  bool isScrollingUp = false;

  void loadMoreItems() async {
    if (!mounted) return;
    setState(() {
      showLoading = true;
    });
    final result =
        await flutterRepoNotifier.mapEventsToState(const FetchMoreItems());

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
  void dispose() {
    scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(flutterRepoNotifierProvider);
    return Stack(
      children: [
        if (state.status is ApiLoaded &&
            (state.flutterRepoList ?? []).isNotEmpty)
          RefreshIndicator(
            onRefresh: () =>
                flutterRepoNotifier.mapEventsToState(const InitialFetch()),
            child: Scrollbar(
              controller: scroll,
              child: NotificationListener(
                child: InfiniteScrolling(
                  scrollController: scroll,
                  itemsLoading: showLoading,
                  // loadItems: () async =>
                  //     ((state.flutterRepoList?.length ?? 0) <= 10)
                  //         ? loadMoreItems()
                  //         : null,

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
                      final repo = state.flutterRepoList?[index];
                      return GestureDetector(
                        onTap: () => navigationDelegate(repo),
                        child: card(
                          name: repo?.fullName ?? '-',
                          description: repo?.description ?? '-',
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        else ...[
          LayoutBuilder(
            builder: (context, cons) {
              return RefreshIndicator(
                onRefresh: () async =>
                    flutterRepoNotifier.mapEventsToState(const InitialFetch()),
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

Widget card({
  String? name,
  String? description,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
    child: FadeTranslateWidget(
      offset: const Offset(0, 100),
      animationDuration: 550,
      delay: 200,
      child: RoundedBorderedContainer(
        width: 0.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  name ?? '',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      description ?? '',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
