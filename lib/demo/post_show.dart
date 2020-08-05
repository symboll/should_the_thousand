import 'package:flutter/material.dart';
import '../model/post.dart';


class PostShow extends StatelessWidget {
  final Post post;
  PostShow({
    @required this.post
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(post.imageUrl),
            Container(
              padding: EdgeInsets.all(32.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('${post.title}',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text('${post.author}',
                    style: Theme.of(context).textTheme.subtitle1
                  ),
                  SizedBox(height: 16.0),
                  Text('${post.description}',
                    style: Theme.of(context).textTheme.bodyText1
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}