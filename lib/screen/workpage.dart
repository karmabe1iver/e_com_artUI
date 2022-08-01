import 'package:design/widgets/bottombar.dart';
import 'package:design/widgets/workpage_screen/profile.dart';
import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        child: BottomBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Personal(),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 10),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: record.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 15, right: 18),
                            child: Container(
                                height: 110,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(record[index].image),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          Container(
                            height: 110,
                            width: 100,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  record[index].title,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  record[index].status,
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  record[index].amount,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 145, 108, 207)),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.menu_rounded))
                        ],
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: const Color.fromARGB(255, 138, 76, 189),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Total',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: const Text(
                            '\$456',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Text(
                                'confirm',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.white,
                                size: 28,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkRecord {
  String image;
  String title;
  String status;
  String amount;
  WorkRecord({
    required this.image,
    required this.title,
    required this.status,
    required this.amount,
  });
}

List<WorkRecord> record = <WorkRecord>[
  WorkRecord(
    image:
        'https://images.unsplash.com/photo-1582201942930-53fea460eeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=391&q=80',
    title: 'Header',
    status: 'Done',
    amount: '+\$32',
  ),
  WorkRecord(
      image:
          'https://images.unsplash.com/photo-1586537049236-b212dc756931?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=719&q=80',
      title: 'Tile',
      status: 'Export',
      amount: '+\$86'),
  WorkRecord(
      image:
          'https://images.unsplash.com/photo-1630313877297-8773445184b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
      title: 'Aside',
      status: 'Done',
      amount: '+\$1953'),
  WorkRecord(
      image:
          'https://images.unsplash.com/photo-1582562124811-c09040d0a901?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80',
      title: 'Footer',
      status: 'Finshed',
      amount: '+\$46'),
];
