// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gitcentral/features/auth/notifiers/github_auth_bloc.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_state.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_bloc.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_state.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/pages/flutter_repo_list_page.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_bloc.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_event.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/screens/flutter_repo_search_result.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_dialogs.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_text_form_field.dart';
import 'package:gitcentral/shared/utils/custom_widgets/measure_size.dart';
import 'package:gitcentral/shared/utils/custom_widgets/unfocus_wrapper.dart';

class FlutterRepoSearchPage extends StatefulWidget {
  const FlutterRepoSearchPage({super.key});

  @override
  State<FlutterRepoSearchPage> createState() => _FlutterRepoSearchPageState();
}

class _FlutterRepoSearchPageState extends State<FlutterRepoSearchPage> {
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
      /// Reset search result
      context.read<FlutterRepoSearchBloc>().add(const SearchRepo(query: ''));
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
        onPressed: () =>
            context.read<GitHubAuthBloc>().add(const SigningOut()));
  }

  @override
  void initState() {
    context.read<FlutterRepoBloc>().add(const InitialFetch());
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
    context.watch<FlutterRepoBloc>().state;
    context.watch<FlutterRepoSearchBloc>().state;
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
                          context
                              .read<FlutterRepoSearchBloc>()
                              .add(SearchRepo(query: e));
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () => signOut(),
                      child: const Icon(Icons.exit_to_app))
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
