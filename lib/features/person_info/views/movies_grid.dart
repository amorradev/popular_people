import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MoviesGrid extends StatelessWidget {
  const MoviesGrid({
    Key? key,
    required this.moviesList,
  }) : super(key: key);
  final List<Map<String, String>> moviesList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            moviesList.length,
            (index) => Padding(
              padding: EdgeInsets.only(right: 5.w,),
              child: SizedBox(
                    width: 30.w,
                    height: 60.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        SizedBox(
                          width: 30.w,
                          height: 45.w,
                          child: Image.network(moviesList[index]['poster']!),
                        ),
                        SizedBox(
                          width: 30.w,
                          height: 15.w,
                          child: Text(
                            moviesList[index]['name']!,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
            )),
      ),
    );
  }
}
