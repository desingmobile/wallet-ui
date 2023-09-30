import 'package:flutter/material.dart';
import 'package:wallet_tik/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              TopBar(),
              CardWidget(),
              ButtonActionWidget(),
              TopTransactionsWidget(),
              TransactionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 46),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              )
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          const Expanded(
            flex: 6,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning!",
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  "Jhon Doe",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () => {},
              icon: const Badge(
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(34),
      )),
      color: Color.fromRGBO(254, 213, 61, 0.9),
      child: SizedBox(
        height: 240,
        width: 500,
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.balance,
                    size: 34,
                  ),
                  Icon(
                    Icons.contactless_outlined,
                    size: 34,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(color: Colors.black54),
                            ),
                            Text(
                              "Jhon Doe",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Exp. Date",
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                            "09/27",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonActionWidget extends StatelessWidget {
  const ButtonActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(36),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.south_west_outlined,
                            size: 48,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14),
                          child: Text(
                            "Request",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(36),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.north_east_outlined,
                            size: 48,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 14, right: 8),
                          child: Text(
                            "Send",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopTransactionsWidget extends StatelessWidget {
  const TopTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 32, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transactions",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "See all",
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(
                    45,
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: items[index].icon,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      items[index].description,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      items[index].date,
                      style: const TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      items[index].number,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      items[index].hour,
                      style: const TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, index) => const Divider(),
      ),
    );
  }
}
