import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_notifier/app_setting_model.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

mixin BasePage {
  PreferredSizeWidget _buildAppBar(String title) {
    return AppBar(title: Text(title));
  }
}

class MyHomePage extends StatelessWidget with BasePage {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar('設定'),
      body: Consumer(builder: (context, ref, _) {
        final state = ref.watch(appSettingViewModelProvider);
        return state.when(data: (appSettingModel) {
          return Center(
            child: Text(appSettingModel.name),
          );
        }, error: (_, __) {
          return const Center(
            child: Text('error'),
          );
        }, loading: () {
          return const Center(child: CircularProgressIndicator());
        });
      }),
    );
  }
}

class BaseViewModel<T> extends StateNotifier<AsyncValue<T>> {
  BaseViewModel(super.state);

  @override
  set state(AsyncValue<T> value) {
    if (mounted) {
      super.state = value;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}

final appSettingViewModelProvider = StateNotifierProvider.autoDispose<
    AppSettingViewModel, AsyncValue<AppSettingModel>>(
  (ref) => AppSettingViewModel(AppSettingDataSource()),
);

class AppSettingViewModel extends BaseViewModel<AppSettingModel> {
  final AppSettingRepository _appSettingRepository;

  AppSettingViewModel(this._appSettingRepository)
      : super(const AsyncLoading()) {
    _loadData();
  }

  Future<void> _loadData() async {
    state = const AsyncValue.loading();
    try {
      final result = await _appSettingRepository.loadAppSettings();
      state = AsyncData(AppSettingModel.fromJson(result));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.fromString(''));
    } finally {
      // finally
    }
  }
}

abstract class AppSettingRepository {
  Future<Map<String, dynamic>> loadAppSettings();
}

class AppSettingDataSource implements AppSettingRepository {
  @override
  Future<Map<String, dynamic>> loadAppSettings() async {
    await Future.delayed(const Duration(seconds: 2));
    return Future.value({'name': 'testA', 'email': 'testA@gmail.com'});
  }
}
