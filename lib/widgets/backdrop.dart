import 'package:flutter/material.dart';

import 'category.dart';

const double _kFlingVelocity = 2.0;

class _BackdropPanel extends StatelessWidget {
  final VoidCallback onTap;
  final GestureDragUpdateCallback onVerticalDragUpdate;
  final GestureDragEndCallback onVerticalDragEnd;
  final Widget title;
  final Widget child;

  const _BackdropPanel(
      {Key key,
      this.onTap,
      this.onVerticalDragUpdate,
      this.onVerticalDragEnd,
      this.title,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return null;
  }
}

class Backdrop extends StatefulWidget {
  final Category currentCategory;
  final Widget frontPanel;
  final Widget backPanel;
  final Widget frontTitle;
  final Widget backTitle;

  const Backdrop({
    @required this.currentCategory,
    @required this.frontPanel,
    @required this.backPanel,
    @required this.frontTitle,
    @required this.backTitle,
  })  : assert(currentCategory != null),
        assert(frontPanel != null),
        assert(backPanel != null),
        assert(frontTitle != null),
        assert(backTitle != null);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop> with SingleTickerProviderStateMixin {

  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds:  300),
      value: 1.0,
      vsync: this
    );
  }
  
  @override
  void didUpdateWidget(Backdrop old) {
    super.didUpdateWidget(old);
    
  }

  @override
  Widget build(BuildContext context) {
    return null;
  }
}
