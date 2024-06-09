import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gitcentral/features/flutter_repo/repository/services/flutter_repo_api_service.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_state.dart';

class FlutterRepoBloc extends Bloc<FlutterRepoEvent, FlutterRepoState> {
  final flutterRepo = GetIt.I<FlutterRepoApiService>();

  int initialPage = 1;

  FlutterRepoBloc() : super(FlutterRepoState()) {
    // on<FlutterRepoEvent>((event, emit) {});
  }
}
