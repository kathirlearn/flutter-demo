import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyCachedImageWidget extends StatelessWidget {
  const MyCachedImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CachedNetworkImage(
          imageUrl: 'https://picsum.photos/250?image=9',
          placeholder: (context,url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
    );
  }
}
