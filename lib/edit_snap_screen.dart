import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:edit_snap/gen/assets.gen.dart';

class ImageEditScreen extends StatefulWidget {
  const ImageEditScreen({super.key, required this.imageBitmap});

  final Uint8List imageBitmap;

  @override
  State<StatefulWidget> createState() => _ImageEditScreenState();
}

class _ImageEditScreenState extends State<ImageEditScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(l10n.imageEditScreenTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.memory(widget.imageBitmap),
            IconButton(
                onPressed: () {},
                icon: Assets.rotateIcon.svg(
                  width: 24,
                  height: 24,
                )),
            IconButton(
                onPressed: () {},
                icon: Assets.flipIcon.svg(width: 24, height: 24)),
          ],
        ),
      ),
    );
  }
}
