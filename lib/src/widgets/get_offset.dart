import 'package:flutter/material.dart';

class GetOffset extends StatefulWidget {
  final Widget child;
  final Function(Offset offset) offSet;
  const GetOffset({super.key, required this.child, required this.offSet});

  @override
  State<GetOffset> createState() => _GetOffsetState();
}

class _GetOffsetState extends State<GetOffset> {
  GlobalKey globalKey = GlobalKey();

  Offset offset = const Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final box = globalKey.currentContext!.findRenderObject() as RenderBox;
      offset = box.localToGlobal(Offset.zero);
      widget.offSet(offset);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
      child: widget.child,
    );
  }
}
