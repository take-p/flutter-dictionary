import 'package:flutter/material.dart';
import 'package:flutter_dart_dictionary/components/search_bar.dart';
import 'package:flutter_dart_dictionary/models/sample.dart';
import 'package:flutter_dart_dictionary/samples/audio_sample.dart';
import 'package:flutter_dart_dictionary/samples/bottom_navigation_bar_sample.dart';
import 'package:flutter_dart_dictionary/samples/checkbox_sample.dart';
import 'package:flutter_dart_dictionary/samples/code_viewer.dart';
import 'package:flutter_dart_dictionary/samples/dialog.dart';
import 'package:flutter_dart_dictionary/samples/expansion_panel_sample.dart';
import 'package:flutter_dart_dictionary/samples/expansion_tile_sample.dart';
import 'package:flutter_dart_dictionary/samples/flutter_flow_sample.dart';
import 'package:flutter_dart_dictionary/samples/gesture_detector_sample.dart';
import 'package:flutter_dart_dictionary/samples/input_form_sample.dart';
import 'package:flutter_dart_dictionary/samples/json_freezed_sample.dart';
import 'package:flutter_dart_dictionary/samples/json_sample.dart';
//import 'package:flutter_dart_dictionary/samples/json_sample_2.dart';
//import 'package:flutter_dart_dictionary/samples/json_sample_3.dart';
import 'package:flutter_dart_dictionary/samples/markdown.dart';
import 'package:flutter_dart_dictionary/samples/position.dart';
import 'package:flutter_dart_dictionary/samples/search_bar.dart';
import 'package:flutter_dart_dictionary/samples/selected_text.dart';
import 'package:flutter_dart_dictionary/samples/setting_save_sample.dart';
import 'package:flutter_dart_dictionary/samples/stepper.dart';
import 'package:flutter_dart_dictionary/samples/sticky_header.dart';
import 'package:flutter_dart_dictionary/samples/swipe.dart';
import 'package:flutter_dart_dictionary/samples/animated_container.dart';
import 'package:flutter_dart_dictionary/samples/animated_icon.dart';
import 'package:flutter_dart_dictionary/samples/buttons.dart';
import 'package:flutter_dart_dictionary/samples/clip_r_rect.dart';
import 'package:flutter_dart_dictionary/samples/cupertino_widgets.dart';
import 'package:flutter_dart_dictionary/samples/curved_navigation_bar.dart';
import 'package:flutter_dart_dictionary/samples/fitted_box_sample.dart';
import 'package:flutter_dart_dictionary/samples/flexible_sample.dart';
import 'package:flutter_dart_dictionary/samples/future_builder_sample.dart';
import 'package:flutter_dart_dictionary/samples/google_fonts.dart';
import 'package:flutter_dart_dictionary/samples/hero.dart';
import 'package:flutter_dart_dictionary/samples/interactive_viewer.dart';
import 'package:flutter_dart_dictionary/samples/introduction.dart';
import 'package:flutter_dart_dictionary/samples/media_query.dart';
import 'package:flutter_dart_dictionary/samples/my_home_page.dart';
import 'package:flutter_dart_dictionary/samples/expanded_page.dart';
import 'package:flutter_dart_dictionary/samples/circle_avatar_page.dart';
import 'package:flutter_dart_dictionary/samples/null_aware_operator.dart';
import 'package:flutter_dart_dictionary/samples/rich_text_page.dart';
import 'package:flutter_dart_dictionary/samples/sliver_app_bar.dart';
import 'package:flutter_dart_dictionary/samples/snack_bar_page.dart';
import 'package:flutter_dart_dictionary/samples/splash_screen.dart';
import 'package:flutter_dart_dictionary/samples/spread_operator.dart';
import 'package:flutter_dart_dictionary/samples/table.dart';
import 'package:flutter_dart_dictionary/samples/webview.dart';
import 'package:flutter_dart_dictionary/samples/wrap_page.dart';
import 'package:flutter_dart_dictionary/samples/visibility_page.dart';
import 'package:flutter_dart_dictionary/samples/aspect_ration.dart';
import 'package:flutter_dart_dictionary/samples/cascade_operator.dart';
import 'package:flutter_dart_dictionary/samples/chip.dart';
import 'package:flutter_dart_dictionary/samples/column.dart';
import 'package:flutter_dart_dictionary/samples/draggable_scrollable_sheet.dart';
import 'package:flutter_dart_dictionary/samples/grid_view.dart';
import 'package:flutter_dart_dictionary/samples/image_picker.dart';
import 'package:flutter_dart_dictionary/samples/list_wheel_scroll_view.dart';
import 'package:flutter_dart_dictionary/samples/mouse_resion.dart';
import 'package:flutter_dart_dictionary/samples/opacity.dart';
import 'package:flutter_dart_dictionary/samples/page_view.dart';
import 'package:flutter_dart_dictionary/samples/placeholder.dart';
import 'package:flutter_dart_dictionary/samples/refresh_indicator.dart';
import 'package:flutter_dart_dictionary/samples/slider_sample.dart';
import 'package:flutter_dart_dictionary/samples/toast.dart';
import 'package:flutter_dart_dictionary/samples/transform.dart';
import 'package:flutter_dart_dictionary/samples/url_launcher.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import '../components/sample_list.dart';

class Tips extends HookWidget {
  const Tips({Key? key}) : super(key: key);

  static const String folderPath = "lib/samples/";
  static List<Sample>? pages = [
    Sample(widget: const MyHomePage(title: "sample"), title: "サンプル", source: folderPath + "my_home_page.dart", tags: ["サンプル"]),
    Sample(widget: const Buttons(), title: "ボタン一覧", source: "buttons.dart", tags: ["ボタン"]),
    Sample(widget: const RichTextPage(), title: "リッチテキスト", source: folderPath + "rich_text_page.dart", tags: ["装飾"]),
    Sample(widget: const Introduction(), title: "アプリの最初にあるチュートリアル", source: folderPath + "introduction.dart"),
    Sample(widget: const FlexiblePage(), title: "Flexible", source: folderPath + "flexible_sample.dart"),
    Sample(widget: const ExpandedPage(), title: "Expanded", source: ""),
    Sample(widget: const CircleAvatarPage(), title: "円形アバター", source: ""),
    Sample(widget: const WrapPage(), title: "Wrap", source: ""),
    Sample(widget: const FittedBoxPage(), title: "枠いっぱいに表示", source: folderPath + "fitted_box_sample.dart"),
    Sample(widget: const SplashScreen(), title: "スプラッシュ画面", source: ""),
    Sample(widget: const SnackBarPage(), title: "SnackBar", source: ""),
    Sample(widget: const VisibilityPage(), title: "表示・非表示", source: ""),
    Sample(widget: const SpreadOperator(), title: "スプレッド構文", imagePath: "assets/images/dart_logo.png", source: ""),
    Sample(widget: const ClipRRectPage(), title: "Containerの角を丸める", source: folderPath + "clip_r_rect.dart"),
    Sample(widget: const SliverAppBarPage(), title: "スクロールでAppBarを隠す", source: ""),
    Sample(widget: const FutureBuilderPage(), title: "Androidっぽいロード画面", source: folderPath + "future_builder_sample.dart", tags: ["Future", "Android"]),
    Sample(widget: const CupertinoWidgets(), title: "iOSっぽいロード画面", source: folderPath + "cupertino_widgets.dart", tags: ["Future", "iOS"]),
    Sample(widget: const MediaQuerySample(), title: "コンテンツのサイズを取得", source: folderPath + "media_query.dart", tags: ["画面幅", "画面の高さ", "width", "height"]),
    Sample(widget: const GoogleFontsPage(), title: "googleフォント", source: ""),
    Sample(widget: const HeroSampleA(), title: "hero?", source: ""),
    Sample(widget: const AnimatedIconSample(), title: "アニメーションアイコン", source: ""),
    Sample(widget: const AnimatedContainerSample(), title: "アニメーションコンテナ", source: ""),
    Sample(widget: const NullAwareOperatorSample(), title: "null対応", source: ""),
    Sample(widget: const SliderSample(), title: "スライダー", source: ""),
    Sample(widget: const ChipSample(), title: "タグ", source: "chip.dart", supportedPlatform: [Platform.android, Platform.ios, Platform.macos, Platform.windows, Platform.linux]),
    Sample(widget: const AspectRatioSample(), title: "画像のアスペクト比変更", source: folderPath + "aspect_ration.dart"),
    Sample(widget: const PlaceholderSample(), title: "placeholder", source: ""),
    Sample(widget: const FlutterToastSample(), title: "トースト", source: ""),
    Sample(widget: const TransformSample(), title: "トランスフォーム", source: ""),
    Sample(widget: const GridViewSample(), title: "グリッドビュー", source: folderPath + "grid_view.dart"),
    Sample(widget: const ColumnSample(), title: "縦に要素を並べる", source: ""),
    Sample(widget: const LaunchURLSample(), title: "URLをブラウザで開く", source: ""),
    Sample(widget: const ImagePickerSample(), title: "image picker", isEnable: false, source: ""),
    Sample(widget: const CascadeOperatorSample(), title: "cascade operator", imagePath: "assets/images/dart_logo.png", source: ""),
    Sample(widget: const ListWheelScrollViewSample(), title: "タイヤ型のListView", source: ""),
    Sample(widget: const PageViewSample(), title: "スライドでページ遷移", source: ""),
    Sample(widget: const MouseRegionSample(), title: "マウスオーバーで作動", source: ""),
    Sample(widget: const OpacitySample(), title: "ウィジェットを半透明にする", source: folderPath + "opacity.dart"),
    Sample(widget: const DraggableScrollableSheetSample(), title: "下からドラッグして表示できるメニュー", isEnable: false, source: ""),
    Sample(widget: const RefreshIndicatorSample(), title: "再読み込み中のぐるぐる回るやつ", source: ""),
    Sample(widget: const CurvedNavigationBarSample(), title: "特徴的なナビゲーションバー", source: ""),
    Sample(widget: const TransformSample(), title: "3D変形", isEnable: false, source: ""),
    Sample(widget: const SwipeSample(), title: "PCでもスワイプで戻る", isEnable: false, source: ""),
    Sample(widget: const CodeViewerSample(), title: "ソースコードを表示", source: folderPath + "code_viewer.dart"),
    Sample(widget: const SearchBarSample(), title: "検索機能", source: folderPath + "search_bar.dart"),
    Sample(widget: const DialogSample(), title: "ダイアログ", source: folderPath + "dialog.dart"),
    Sample(widget: const StepperSample(), title: "ステッパー", source: folderPath + "stepper.dart"),
    Sample(widget: const StickyHeaderSample(), title: "スティッキーヘッダー", source: folderPath + "sticky_header.dart", tags: ["見出し", "ヘッダー", "固定", "上部"]),
    Sample(widget: const WebViewSample(), title: "ローカルのHTMLとCSSを表示", source: "", tags: ["HTML", "CSS"]),
    Sample(widget: const MarkdownSample(), title: "markdownを表示", source: folderPath + "markdown.dart", tags: ["markdown"]),
    Sample(widget: const TableSample(), title: "表（テーブル）", source: folderPath + "table.dart"),
    Sample(widget: const PositionSample(), title: "位置をずらして表示", source: folderPath + "position.dart"),
    Sample(widget: const SelectedTextSample(), title: "テキストにコピー＆ペースト機能を搭載", source: folderPath + "selected_text.dart"),
    Sample(widget: const CheckboxSample(), title: "チェックボックス", source: folderPath + "checkbox_sample.dart"),
    Sample(widget: const InteractiveViewerSample(),  title: "画像ビューワー", source: folderPath + "interactive_viewer_sample.dart"),
    Sample(widget: const GestureDetectorSample(), title: "Widgetをタップ可能にする", source: folderPath + "gesture_detector_sample.dart"),
    Sample(widget: const JsonSample(), title: "jsonファイルの読み込み", source: folderPath + "json_sample.dart", tags: ["json"]),
    Sample(widget: const AudioSample(), title: "音声を鳴らす", source: folderPath + "audio_sample.dart", tags: ["音声", "再生"]),
    Sample(widget: const SettingSaveSample(), title: "アプリの設定を保存する", source: folderPath + "setting_save_sample.dart", tags: ["ファイル", "保存", "データ"]),
    Sample(widget: const InputFormSample(), title: "入力フォーム", source: folderPath + "input_form_sample.dart", tags: ["テキストフィールド"]),
    //Sample(widget: const JsonSample2(), title: "jsonファイルの読み込み（json_serializable使用）", source: folderPath + "json_sample_2.dart", tags: ["ライブラリ", "json_serializable"]),
    Sample(widget: const JsonFreezedSample(), title: "jsonファイルの読み込み（freezed使用）", source: folderPath + "json_sample_3.dart", tags: ["ライブラリ", "freezed"]),
    Sample(widget: const BottomNavigationBarSample(), title: "ボトムナビゲーションバー", source: folderPath + "bottom_navigation_bar_sample.dart", tags: ["画面", "下", "ボタン"]),
    Sample(widget: const ExpansionPanelSample(), title: "アコーディオンメニュー（ExpansionPanel使用）", source: folderPath + ".dart", tags: ["展開", "開く"]),
    Sample(widget: const ExpansionTileSample(), title: "アコーディオンメニュー（ExpansionTile使用）", source: folderPath + ".dart", tags: ["展開", "開く"]),
    Sample(widget: const FlutterFlowSample(), title: "Flutter版React Flow", source: folderPath + "flutter_flow_sample.dart", tags: ["react flow"]),
  ].where((e) => e.isEnable).toList();

  @override
  Widget build(BuildContext context) {
    final _keywords = useState("");
    
    // 検索キーワードは複数 => split()を使用？
    // 部分一致で検索したい

    List<Sample> _filteredPages = pages!.where(
      (Sample page) => _keywords.value.isEmpty
      || _keywords.value.toLowerCase().replaceAll("　", " ") .split(" ").every(
        (keyword) => page.title.toLowerCase().contains(keyword)
        || page.tags.where((tag) => tag.toLowerCase().contains(keyword)).isNotEmpty)
    ).toList();

    return Scaffold(
      appBar: AppBar(title: const Text("Tips")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(
            onChanged: (keyword){
              _keywords.value = keyword;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(_filteredPages.length.toString() + " 件"),
          ),
          SampleList(filteredPages: _filteredPages),
        ],
      ),
    );
  }
}
