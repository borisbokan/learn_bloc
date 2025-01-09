import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lear_bloc/Data/db_offers_mock.dart';
import 'package:lear_bloc/bloc/bloc_offered/bloc_offered.dart';
import 'package:lear_bloc/bloc/bloc_offered/event_offers.dart';
import 'package:lear_bloc/bloc/bloc_offered/state_offered.dart';
import 'package:lear_bloc/models/offer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocOffers()..add(InitOfferEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(
          key: UniqueKey(),
          title: "Title",
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<BlocOffers>().add(AddOfferEvent(
              offer: Offer(
                  id: "tt7",
                  title: "New offer",
                  description: "descr new offer")));
        },
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                context.read<BlocOffers>().add(
                      FetchOffersEvent(
                          skip: 10, initOffers: await _fetchoffers()),
                    );
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BlocBuilder<BlocOffers, StateOffers>(builder: (context, state) {
        return ListView.builder(
          itemCount: state.listOffers?.length,
          itemBuilder: (context, itemIndex) => ItemOffer(
            id: state.listOffers?[itemIndex].id,
            title: state.listOffers?[itemIndex].title,
            description: state.listOffers?[itemIndex].description,
            onRemoveItem: (id) {
              log(" on delete item ");
              context
                  .read<BlocOffers>()
                  .add(RemoveOfferEvent(offer: state.listOffers![itemIndex]));
            },
          ),
        );
      }),
    );
  }

  Future<List<Offer>?> _fetchoffers() async {
    List<Offer>? _offers = await DbOffersMock.fetchOffers();
    return _offers;
  }
}

class ItemOffer extends StatelessWidget {
  final String? id;
  final String? title;
  final String? description;
  final Function(String)? onRemoveItem;
  const ItemOffer(
      {super.key, this.id, this.title, this.description, this.onRemoveItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "$id) $title",
            style: const TextStyle(color: Colors.black54),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                onRemoveItem?.call(id!);
              },
              icon: const Icon(Icons.delete)),
        ],
      ),
    );
  }
}
