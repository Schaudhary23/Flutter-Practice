import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

enum Actions { Increment, Decrement }

int counterReducer(int state, dynamic action) {
  if (action == Actions.Increment) return state + 1;
  if (action == Actions.Decrement) return state - 1;

  return state;
}

class FlutterReduxApp extends StatelessWidget {
  final Store<int> store;
  const FlutterReduxApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: store,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('State Management Using Redux'),
          ),
          body: Container(
            color: Colors.blueAccent,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                      height: 30, child: Text('You have clicked button')),
                  SizedBox(
                      height: 30,
                      child: StoreConnector<int, String>(
                          builder: (context, counter) {
                            return Text(
                              counter,
                              style: const TextStyle(fontSize: 30.0),
                            );
                          },
                          converter: (store) => store.state.toString())),
                  const SizedBox(
                    height: 30,
                    child: Text('Times'),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            StoreConnector<int, VoidCallback>(
              builder: (context, callback) {
                return Center(
                  child: FloatingActionButton(
                    onPressed: callback,
                    child: const Icon(Icons.add),
                  ),
                );
              },
              converter: (store) {
                return () => store.dispatch(Actions.Increment);
              },
            ),
            StoreConnector<int, VoidCallback>(
              builder: (context, callback) {
                return Center(
                  child: FloatingActionButton(
                    onPressed: callback,
                    child: const Icon(Icons.exposure_minus_1),
                  ),
                );
              },
              converter: (store) {
                return () => store.dispatch(Actions.Decrement);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
