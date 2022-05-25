import 'package:flutter/material.dart';
import 'package:ubelaw/customer/orders/clientOrderOpen.dart';
import 'package:ubelaw/customer/orders/clientOrderRequest.dart';
import 'package:ubelaw/sellers/orders/sellerOrderCancelled.dart';
import 'package:ubelaw/sellers/orders/sellerOrderCompleted.dart';
import 'package:ubelaw/sellers/orders/sellerOrderOngoing.dart';
import 'package:ubelaw/sellers/orders/sellerOrderRequest.dart';

import '../orders/clientOrderCancelled.dart';
import '../orders/clientOrderCompleted.dart';
class OrderTabClient extends StatefulWidget {
  const OrderTabClient({Key? key}) : super(key: key);

  @override
  State<OrderTabClient> createState() => _OrderTabClientState();
}

class _OrderTabClientState extends State<OrderTabClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  child: AppBar(
                    backgroundColor: Colors.black54,
                    bottom: const TabBar(
                      unselectedLabelColor: Colors.white54,
                      labelColor: Colors.white,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: Text(
                            "Request",
                            style: TextStyle(
                                color: Colors.white,
                                ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Open",
                            style: TextStyle(
                                color: Colors.white,

                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Completed",
                            style: TextStyle(
                                color: Colors.white,

                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Cancelled",
                            style: TextStyle(
                                color: Colors.white,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // create widgets for each tab bar here
                const Expanded(
                  child: TabBarView(
                    children: [
                      // first tab bar view widget

                      ClientOrderRequest(),
                      ClientOrderOpen(),
                      ClientOrderCompleted(),
                      ClientOrderCancelled(),

                      // second tab bar viiew widget

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
