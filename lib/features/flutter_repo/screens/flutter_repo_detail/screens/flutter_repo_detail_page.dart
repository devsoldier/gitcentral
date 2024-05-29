// ignore: unused_import
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gitcentral/features/flutter_repo/repository/data_classes/flutter_repo_response.dart';
import 'package:gitcentral/shared/utils/custom_widgets/measure_size.dart';
import 'package:gitcentral/shared/utils/custom_widgets/rounded_container.dart';
import 'package:gitcentral/shared/utils/helpers/debouncer.dart';

class FlutterRepoDetailPage extends StatefulWidget {
  final FlutterRepoResponse? repoDetail;
  const FlutterRepoDetailPage({super.key, required this.repoDetail});

  static PageRoute route({FlutterRepoResponse? repoDetail}) {
    return CupertinoPageRoute(
      builder: (context) {
        return FlutterRepoDetailPage(
          repoDetail: repoDetail,
        );
      },
      settings: const RouteSettings(name: '/flutterrepodetailpage'),
    );
  }

  @override
  State<FlutterRepoDetailPage> createState() => _FlutterRepoDetailPageState();
}

class _FlutterRepoDetailPageState extends State<FlutterRepoDetailPage> {
  double? rightColumnHeight;
  double? descriptionHeight;
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.repoDetail?.fullName ?? 'Github')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 2,
                  child: RoundedBorderedContainer(
                    height: rightColumnHeight,
                    child: MeasureSize(
                      onChange: (size) {
                        if (!mounted) return;
                        setState(() {
                          descriptionHeight = size.height;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.repoDetail?.fullName ?? '',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                          ),
                          const Divider(height: 0),
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text('Language: '),
                                        Text(
                                          widget.repoDetail?.language ?? '',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    if (expanded)
                                      Expanded(
                                        child: Text(
                                          widget.repoDetail?.description ?? '',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      )
                                    else ...[
                                      Text(
                                        widget.repoDetail?.description ?? '',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MeasureSize(
                    onChange: (size) async {
                      await debouncer(ms: 50);
                      if (size.height < (descriptionHeight ?? 0)) {
                        if (!mounted) return;
                        setState(() {
                          rightColumnHeight = descriptionHeight;
                          expanded = true;
                        });
                        return;
                      }
                      if (!mounted) return;
                      setState(() {
                        rightColumnHeight = size.height;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        buildCounters(
                          icon: const Icon(Icons.remove_red_eye_outlined),
                          counter: '${widget.repoDetail?.watchers ?? 0}',
                        ),
                        buildCounters(
                          icon: const Icon(Icons.fork_right),
                          counter: '${widget.repoDetail?.forks ?? 0}',
                        ),
                        buildCounters(
                          icon: const Icon(Icons.star_border),
                          counter: '${widget.repoDetail?.watchers ?? 0}',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget buildCounters({Widget? icon, String? counter}) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: RoundedBorderedContainer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: icon ?? const Icon(Icons.star)),
                Expanded(child: Text(counter ?? '0')),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
