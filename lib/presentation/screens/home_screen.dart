import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isChecked = false;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff0E61D7),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xff0E61D7),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.savings),
            label: 'Savings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 50),
            _buildHeader(context),
            const SizedBox(height: 20),
            _buildTotalSavingsCard(context),
            const SizedBox(height: 70),
            _buildSaverOfTheMonthCard(context),
            const SizedBox(height: 20),
            _buildToDoList(context),
            const SizedBox(height: 20),
            _buildTransactionHistoryCard(context),
            const SizedBox(height: 30),
            _buildCreateSafelockCard(context),
            const SizedBox(height: 20),
            _buildMyPocketCard(context),
            const SizedBox(height: 30),
            _buildMeetaSaverCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Davio',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white,
                    ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  debugPrint('Notification');
                },
                child: const Icon(
                  Icons.notifications,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            'Yaay! It\'s ${_getDayOfWeek()}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  String _getDayOfWeek() {
    const days = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday'
    ];
    return days[DateTime.now().weekday % 7];
  }

  Widget _buildTotalSavingsCard(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 121,
      decoration: BoxDecoration(
        color: const Color(0xff0E61D7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 20,
              child: Image.asset(
                'assets/images/shield.png',
                width: 26,
                height: 26,
              ),
            ),
            Positioned(
              top: 30,
              left: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Savings',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                  ),
                  Text(
                    'N167,300.00',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSaverOfTheMonthCard(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[800],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 21,
            left: 41,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SAVER OF',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                ),
                Text(
                  'THE MONTH:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: Image.asset(
              'assets/images/davio.png',
              width: 154,
              height: 150,
            ),
          ),
          Positioned(
            bottom: 15,
            left: 80,
            child: Container(
              width: 164,
              height: 66,
              decoration: BoxDecoration(
                color: const Color(0xff0E61D7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'DAVIO',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    Text(
                      'WHITE',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToDoList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'TO-DO LIST - REFRESH',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 57,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey[800]!,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                Checkbox(
                  activeColor: const Color(0xff0E61D7),
                  checkColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                const SizedBox(width: 10),
                Text(
                  'Securely add a valid debit card',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionHistoryCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('Add a valid debit card');
      },
      child: Container(
        width: double.infinity,
        height: 107,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/images/Vector.png', width: 26, height: 26),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Transaction History',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: const Color(0xff0E61D7),
                          fontSize: 13,
                        ),
                  ),
                  Text(
                    'See your most recent transactions on',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                  ),
                  Text(
                    'Piggyvest',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreateSafelockCard(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 107,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset('assets/images/padlock.png', width: 26, height: 26),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create a Safelock',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff0E61D7),
                        fontSize: 13,
                      ),
                ),
                Text(
                  'Avoid spending temptations. Tap to',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                ),
                Text(
                  'create a safelock',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildMyPocketCard(BuildContext context) {
  return GestureDetector(
    onTap: () {
      debugPrint('My Pocket');
    },
    child: Container(
      width: double.infinity,
      height: 107,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset('assets/images/att.png', width: 26, height: 26),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'My Pocket',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                ),
                Text(
                  'See your most recent transactions on',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                ),
                Text(
                  'Piggyvest',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildMeetaSaverCard(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '#MEETAPIGGYVESTSAVER: SIMI',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.white,
              fontSize: 17,
            ),
      ),
      const SizedBox(height: 10),
      Container(
        width: double.infinity,
        height: 271,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset('assets/images/simi.png', height: 271),
      ),
    ],
  );
}

Widget _QuickOption(BuildContext context) {
  return Column(
    children: [
      Text(
        'QUICK OPTIONS',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.white,
              fontSize: 17,
            ),
      ),
    ],
  );
}
