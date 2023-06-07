import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context)
        .size
        .width; // * MediaQuery.of(context).devicePixelRatio;
    return /* Container(
      color: Colors.transparent,
      height: height * 0.08,
      padding: EdgeInsets.only(
        bottom: height * 0.01,
        top: height * 0.01,
        left: width * 0.05,
        right: width * 0.05,
      ),
      child: */
        Container(
      //height: height * 0.068,
      //width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.08),
        border: Border.all(color: Colors.grey[300]!, width: width * 0.005),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: MaterialButton(
                shape: const CircleBorder(),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.abc),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.025,
                        //fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: MaterialButton(
                shape: const CircleBorder(),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.abc),
                    Text(
                      'My Contests',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.023,
                        //fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: MaterialButton(
                shape: const CircleBorder(),
                onPressed: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (_) => const RewardPage()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.abc),
                    Text(
                      'Reward',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.025,
                        //fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: MaterialButton(
                shape: const CircleBorder(),
                onPressed: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (_) => const WalletPage()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.abc),
                    Text(
                      'Wallet',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.025,
                        //fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
      //),
    );
    ;
  }
}
