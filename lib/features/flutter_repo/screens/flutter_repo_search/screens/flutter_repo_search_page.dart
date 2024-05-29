// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_notifier.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_state.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_notifier.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/pages/flutter_repo_list_page.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_event.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_notifier.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/screens/flutter_repo_search_result.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_dialogs.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_text_form_field.dart';
import 'package:gitcentral/shared/utils/custom_widgets/measure_size.dart';
import 'package:gitcentral/shared/utils/custom_widgets/unfocus_wrapper.dart';

class FlutterRepoSearchPage extends ConsumerStatefulWidget {
  const FlutterRepoSearchPage({super.key});

  @override
  ConsumerState<FlutterRepoSearchPage> createState() =>
      _FlutterRepoSearchPageState();
}

class _FlutterRepoSearchPageState extends ConsumerState<FlutterRepoSearchPage> {
  final searchNode = FocusNode();
  final controller = TextEditingController();
  double? textFieldWidth;
  Widget content = const FlutterRepoListPage();

  void switchContent() {
    if (searchNode.hasFocus || controller.text.isNotEmpty) {
      if (!mounted) return;
      setState(() {
        content = FlutterRepoSearchResult(textController: controller);
      });
    } else {
      if (!mounted) return;
      setState(() {
        content = const FlutterRepoListPage();
      });
    }
  }

  void signOut() {
    customDialog(
        context: context,
        title: 'Sign Out',
        content: 'Are you sure?',
        onPressed: () => ref
            .read(gitHubAuthNotifier.notifier)
            .mapEventsToState(const SigningOut()));
  }

  @override
  void initState() {
    searchNode.addListener(switchContent);
    super.initState();
  }

  @override
  void dispose() {
    searchNode.removeListener(switchContent);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(flutterRepoNotifierProvider);
    ref.watch(flutterRepoSearchNotifierProvider);
    return UnfocusWrapper(
      child: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: MeasureSize(
                      onChange: (size) {
                        if (!mounted) return;
                        setState(() {
                          textFieldWidth = size.width;
                        });
                      },
                      child: CustomTextFormField(
                        width: textFieldWidth,
                        focusNode: searchNode,
                        controller: controller,
                        decoration: const InputDecoration(
                          hintText: 'Search By Name',
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                        ),
                        onFieldSubmitted: (e) {
                          ref
                              .read(flutterRepoSearchNotifierProvider.notifier)
                              .mapEventsToState(SearchRepo(query: e));
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () => signOut(), child: Icon(Icons.exit_to_app))
                ],
              ),
            ),
            Expanded(child: content),
          ],
        ),
      )),
    );
  }
}
