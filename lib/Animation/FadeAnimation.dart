import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 800), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
          Duration(milliseconds: 800), Tween(begin: 30.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (800 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(0, animation["translateY"]), child: child),
      ),
    );
  }
}

class FadeAnimationLTOR extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimationLTOR(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 800), Tween(begin: 0.0, end: 1.0)),
      Track("translateX").add(
          Duration(milliseconds: 800), Tween(begin: -100.0, end: 0.0),
          curve: Curves.easeOutBack)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (800 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(animation['translateX'], 0), child: child),
      ),
    );
  }
}

class FadeAnimationRTOL extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimationRTOL(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 800), Tween(begin: 0.0, end: 1.0)),
      Track("translateX").add(
          Duration(milliseconds: 800), Tween(begin: 100.0, end: 0.0),
          curve: Curves.easeOutBack)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (800 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(animation['translateX'], 0), child: child),
      ),
    );
  }
}

class FadeAnimationTTOB extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimationTTOB(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 800), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
          Duration(milliseconds: 800), Tween(begin: -100.0, end: 0.0),
          curve: Curves.easeOutBack)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (800 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(0, animation['translateY']), child: child),
      ),
    );
  }
}

class FadeAnimationBTOT extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimationBTOT(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 800), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
          Duration(milliseconds: 800), Tween(begin: 100.0, end: 0.0),
          curve: Curves.easeOutBack)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (800 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(0, animation['translateY']), child: child),
      ),
    );
  }
}
