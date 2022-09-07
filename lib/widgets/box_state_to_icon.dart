import 'package:flutter/material.dart';

import '../enum/box_state.dart';

class BoxStateToIcon extends StatelessWidget {
  final dynamic boxState;
  const BoxStateToIcon({super.key, required this.boxState});

  @override
  Widget build(BuildContext context) {
    return boxState == BoxState.circle
        ? const Icon(
            Icons.lens_outlined,
            size: 100.0,
            color: Colors.white,
          )
        : boxState == BoxState.cross
            ? const Icon(
                Icons.close,
                size: 120.0,
                color: Colors.white,
              )
            : Container();
  }
}
