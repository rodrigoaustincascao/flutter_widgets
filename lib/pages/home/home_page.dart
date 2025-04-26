import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  botoesRotacaoTexto,
  singleChildScrollView,
  listView,
  dialog,
  snackbar,
  formsTextfield,
  forms,
  json,
  stack,
  stack2,
  bottomNavigatorBar,
  circleAvatar,
  cores,
  materialBanner,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            onSelected: (PopupMenuPages result) {
              switch (result) {
                case PopupMenuPages.container:
                  Navigator.pushNamed(context, "/container");
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.pushNamed(context, "/rows_columns");
                  break;
                case PopupMenuPages.mediaQuery:
                  Navigator.pushNamed(context, "/media_query");
                  break;
                case PopupMenuPages.layoutBuilder:
                  Navigator.pushNamed(context, "/layout_builder");
                  break;
                case PopupMenuPages.botoesRotacaoTexto:
                  Navigator.pushNamed(context, "/botoes_rotacao_texto");
                  break;
                case PopupMenuPages.singleChildScrollView:
                  Navigator.pushNamed(context, "/single_child_scroll_view");
                  break;
                case PopupMenuPages.listView:
                  Navigator.pushNamed(context, "/list_view");
                  break;
                case PopupMenuPages.dialog:
                  Navigator.pushNamed(context, "/dialog");
                  break;
                case PopupMenuPages.snackbar:
                  Navigator.pushNamed(context, "/snackbar");
                  break;
                case PopupMenuPages.formsTextfield:
                  Navigator.pushNamed(context, "/forms_textfield");
                  break;
                case PopupMenuPages.forms:
                  Navigator.pushNamed(context, "/forms");
                  break;
                case PopupMenuPages.json:
                  Navigator.pushNamed(context, "/json");
                  break;
                case PopupMenuPages.stack:
                  Navigator.pushNamed(context, "/stack");
                  break;
                case PopupMenuPages.stack2:
                  Navigator.pushNamed(context, "/stack2");
                  break;
                case PopupMenuPages.bottomNavigatorBar:
                  Navigator.pushNamed(context, "/bottom_navigator_bar");
                  break;
                case PopupMenuPages.circleAvatar:
                  Navigator.pushNamed(context, "/circle_avatar");
                  break;
                case PopupMenuPages.cores:
                  Navigator.pushNamed(context, "/cores");
                  break;
                case PopupMenuPages.materialBanner:
                  Navigator.pushNamed(context, "/material_banner");
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text("Container"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowsColumns,
                  child: Text("Rows e Columns"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.mediaQuery,
                  child: Text("Media Query"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text("Layout Builder"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoesRotacaoTexto,
                  child: Text("Botoes Rotacao Texto"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.singleChildScrollView,
                  child: Text("Single Child Scroll View"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.listView,
                  child: Text("List View"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialog,
                  child: Text("Dialog"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbar,
                  child: Text("Snackbar"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.formsTextfield,
                  child: Text("Forms TextField"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text("Forms"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.json,
                  child: Text("Json"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text("Stack"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text("Stack2"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottomNavigatorBar,
                  child: Text("Bottom Navigator Bar"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circleAvatar,
                  child: Text("Circle Avatar"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cores,
                  child: Text("Cores"),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.materialBanner,
                  child: Text("Material Banner"),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
