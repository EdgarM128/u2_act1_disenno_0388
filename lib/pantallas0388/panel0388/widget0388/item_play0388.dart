import 'package:flutter/material.dart';

class Itemplay extends StatelessWidget {
  const Itemplay({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              color: Theme.of(context).colorScheme.primary.withOpacity(.1),
              spreadRadius: 5,
              blurRadius: 5,
            )
          ]),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/EdgarM128/Img_IOS/main/crow.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Jugador: xxxxxx",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    )),
          )
        ],
      ),
    );
  }
}
