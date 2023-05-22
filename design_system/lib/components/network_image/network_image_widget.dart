import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetWorkImagewidget extends StatelessWidget {
  const NetWorkImagewidget({
    super.key,
    required this.imageUrl,
    this.loadingWidget,
    this.errorWidget,
  });

  final String imageUrl;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      progressIndicatorBuilder: (context, url, progress) => Center(
        child: loadingWidget ??
            CircularProgressIndicator(
              value: progress.progress,
            ),
      ),
      errorWidget: (context, url, error) =>
          errorWidget ??
          const SizedBox.shrink(),
      imageUrl: imageUrl,
    );
  }
}
