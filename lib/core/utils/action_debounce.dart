import 'dart:async';

class ActionDebouncer {
  ActionDebouncer({
    this.delay = const Duration(milliseconds: 650),
  }) : _timer = Timer(delay, () {});

  late Timer _timer;
  final Duration delay;

  void debounceAction(void Function() action) {
    if (_timer.isActive) _timer.cancel();
    _timer = Timer(delay, action);
  }

  void dispose() => _timer.cancel();
}
