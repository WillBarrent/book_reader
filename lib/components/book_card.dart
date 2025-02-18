import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width - 10;
    return Card(
      shape: LinearBorder(),
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://upload.wikimedia.org/wikipedia/ru/a/aa/The_Call_of_the_Wild_%28poster%29.jpg',
                width: size / 3,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Зов предков',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Джек Лондон',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'EPUB, 274 КБ',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.grey[400],
                          size: 30,
                        ),
                        Icon(
                          Icons.timer_sharp,
                          color: Colors.grey[400],
                          size: 30,
                        ),
                        Icon(
                          Icons.check_box,
                          color: Colors.grey[400],
                          size: 30,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey[400],
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
