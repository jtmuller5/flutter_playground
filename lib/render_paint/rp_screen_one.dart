import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RpScreenOne extends StatelessWidget {
  const RpScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: QuantumBox());
  }
}

// Widget creates renderObject (createRenderObject)
// Widget -> createElement -> [element] -> mount (adds element to element tree)
// Mount also adds any renderObjects to the render tree
class QuantumBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: 50,
          height: 50,
          child: ColoredBox(color: Colors.green)),
    );
  }

  @override
  StatelessElement createElement() {
    return QuantumElement(this);
  }
}

// RenderObject -> layout(constraints) -> performLayout
// Constraints are abstract and are specific to the layout scheme you are using
class QuantumRenderObject extends RenderBox {

  @override
  void layout(Constraints constraints, {bool parentUsesSize = false}){
    print('Layout');
  }

  @override
  void performLayout(){
print('Perform layout');
  }

  @override
  Rect get semanticBounds => throw UnimplementedError();


}

class QuantumElement extends StatelessElement{
  QuantumElement(super.widget);

  @override
  bool get debugDoingBuild => true;


  @override
  RenderObject get renderObject {
return QuantumRenderObject();
  }
}
