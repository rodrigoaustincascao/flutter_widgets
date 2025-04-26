import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:mao_na_massa/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:mao_na_massa/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:mao_na_massa/pages/circle_avatar/circle_avatar_page.dart';
import 'package:mao_na_massa/pages/colors/colors_page.dart';
import 'package:mao_na_massa/pages/dialogs/dialog_page.dart';
import 'package:mao_na_massa/pages/forms/forms_page.dart';
import 'package:mao_na_massa/pages/forms/forms_textfield_page.dart';
import 'package:mao_na_massa/pages/home/container/container_page.dart';
import 'package:mao_na_massa/pages/home/home_page.dart';
import 'package:mao_na_massa/pages/json/json_page.dart';
import 'package:mao_na_massa/pages/layout_builder/layout_builder_page.dart';
import 'package:mao_na_massa/pages/material_banner/material_banner_page.dart';
import 'package:mao_na_massa/pages/media_query/media_query_page.dart';
import 'package:mao_na_massa/pages/rows_columns/rows_columns_page.dart';
import 'package:mao_na_massa/pages/scrolls/list_view_page.dart';
import 'package:mao_na_massa/pages/scrolls/single_child_scroll_view_page.dart';
import 'package:mao_na_massa/pages/snackbar/snackbar_page.dart';
import 'package:mao_na_massa/pages/stack/stack2_page.dart';
import 'package:mao_na_massa/pages/stack/stack_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode,

      builder: (_) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primaryColor: Colors.amber,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnsPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => const BotoesRotacaoTextoPage(),
        '/single_child_scroll_view': (_) => const SingleChildScrollViewPage(),
        '/list_view': (_) => ListViewPage(),
        '/dialog': (_) => const DialogPage(),
        '/snackbar': (_) => const SnackbarPage(),
        '/forms_textfield': (_) => const FormsTextfieldPage(),
        '/forms': (_) => const FormsPage(),
        '/json': (_) => const JsonPage(),
        '/stack': (_) => const StackPage(),
        '/stack2': (_) => const Stack2Page(),
        '/bottom_navigator_bar': (_) => const BottomNavigatorBarPage(),
        '/circle_avatar': (_) => const CircleAvatarPage(),
        '/cores': (_) => const ColorsPage(),
        '/material_banner': (_) => const MaterialBannerPage(),
      },
    );
  }
}
