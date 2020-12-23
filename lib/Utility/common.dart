import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

displayImage(String url, BuildContext context) {
  return CachedNetworkImage(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    imageUrl: url ,
    fit: BoxFit.cover,
    progressIndicatorBuilder: (context, url, downloadProgress) => Container(
      width: 200,
      height: 200,
      child: CircularProgressIndicator(
        value: downloadProgress.progress,
      ),
    ),
    errorWidget: (context, url, error) => Icon(
      Icons.error,
    ),
  );
}