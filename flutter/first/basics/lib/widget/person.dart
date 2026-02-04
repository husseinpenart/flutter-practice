import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String picUrl;
  final String name;
  final String age;
  final String country;
  final String job;
  const Person({
    required this.picUrl,
    required this.name,
    required this.age,
    required this.country,
    required this.job,
    Key? Key,
  }) : super(key: Key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),

                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(picUrl),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white54),
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _createPersonInfoRow(Key: 'age', value: age, context: context),
                _createPersonInfoRow(Key: 'job', value: job, context: context),
                _createPersonInfoRow(
                  Key: 'country',
                  value: country,
                  context: context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _createPersonInfoRow({
    required String Key,
    required String value,
    required BuildContext context,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text('$Key:', style: Theme.of(context).textTheme.bodyLarge),
        ),
        Spacer(),
        Expanded(
          child: Text(value, style: Theme.of(context).textTheme.bodySmall),
        ),
      ],
    );
  }
}
