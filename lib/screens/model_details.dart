import 'package:flutter/material.dart';
import 'package:garmentso_mobile/screens/scale_painter.dart';
import 'package:garmentso_mobile/screens/grid_painter.dart';

class ModelDetails extends StatefulWidget {
  final double widthMeasurement;
  final double heightMeasurement;
  const ModelDetails({
    super.key,
    required this.widthMeasurement,
    required this.heightMeasurement,
  });

  @override
  State<ModelDetails> createState() => _ModelDetailsState();
}

class _ModelDetailsState extends State<ModelDetails> {
  @override
  Widget build(BuildContext context) {
    print('Width Measurement: ${widget.widthMeasurement}');
    print('Height Measurement: ${widget.heightMeasurement}');
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        // backgroundColor: const Color.fromARGB(0, 70, 67, 67),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            // child: Container()
            child: Stack(
              children: [
                CustomPaint(
                  painter: ScalePainter(
                    widthMeasurement: widget.widthMeasurement,
                    heightMeasurement: widget.heightMeasurement,
                  ),
                  child: Container(),
                ),
                CustomPaint(painter: GridPainter())
              ],
            ),
          ),
        ));
  }
}
