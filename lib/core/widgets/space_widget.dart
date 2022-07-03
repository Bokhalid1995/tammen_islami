
import 'package:flutter/cupertino.dart';
import 'package:tammen_islami/core/utils/size_config.dart';

class XSpace extends StatelessWidget {
   const XSpace(this.value, {Key? key}) : super(key: key);
  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defualtSize! * value!,

    );
  }
}

class YSpace extends StatelessWidget {
  const YSpace(this.value,{Key? key}) : super(key: key);
  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defualtSize! * value!,

    );
  }
}
