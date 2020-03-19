import 'package:flutter/material.dart';

class NotifyingPageView extends StatefulWidget {
  final ValueNotifier<double> notifier;
  final List<Widget> children;

  const NotifyingPageView({Key key, this.notifier, this.children}) : super(key: key);

  @override
  _NotifyingPageViewState createState() => _NotifyingPageViewState();
}

class _NotifyingPageViewState extends State<NotifyingPageView> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: ClampingScrollPhysics(),
      children: widget.children,
      controller: _pageController,
    );
  }

  void _onScroll() {
    widget.notifier?.value = _pageController.page;
  }
}
