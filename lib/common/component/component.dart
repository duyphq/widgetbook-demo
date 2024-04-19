import 'package:widget_book/common/component/component_alignment.dart';
import 'package:widget_book/common/component/component_border.dart';
import 'package:widget_book/common/component/component_color.dart';
import 'package:widget_book/common/component/component_radius.dart';
import 'package:widget_book/common/component/component_shadow.dart';
import 'package:widget_book/common/component/component_text_style.dart';

import 'component_widget.dart';

class Component {
  static ComponentRadius radius = ComponentRadius();

  static ComponentBorder border = ComponentBorder();

  static ComponentColor color = ComponentColor();

  static ComponentTextStyle textStyle = ComponentTextStyle();

  static ComponentShadow shadow = ComponentShadow();

  static ComponentWidget widget = ComponentWidget();

  static ComponentAlignment alignmet = ComponentAlignment();
}
