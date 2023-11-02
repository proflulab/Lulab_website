import 'package:flutter/gestures.dart';

//模拟屏幕单击操作
void pressAdd(Offset v) {
  _sendPointerEvent(PointerAddedEvent(pointer: 0, position: v));
  _sendPointerEvent(PointerDownEvent(pointer: 0, position: v));
  _sendPointerEvent(PointerUpEvent(pointer: 0, position: v));
}

void _sendPointerEvent(PointerEvent event) {
  GestureBinding.instance.handlePointerEvent(event);
}
