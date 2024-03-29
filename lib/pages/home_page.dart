import 'package:flutter/material.dart';
import 'package:ticket_booking/components/ticket_widget.dart';
import 'package:ticket_booking/config/constants.dart';
import 'package:ticket_booking/config/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 32, 8, 24),
          child: Column(
            children: [
              Text(
                'Your tickets',
                style: typography(context).title1,
              ),
              const SizedBox(
                height: 16,
              ),
              TicketWidget(
                  width: MediaQuery.of(context).size.width - 16,
                  height: 180,
                  isCornerRounded: true,
                  colorsList: const [Color(0xff275e45), Color(0xff56b295)],
                  color: Colors.blue,
                  child: const TicketData())
            ],
          ),
        ),
      ),
    );
  }
}

class TicketData extends StatelessWidget {
  const TicketData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 75,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage('https://picsum.photos/80/75'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8)),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anuj Jain',
                    style: typography(context).title3,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'India Tour 2023',
                    style: typography(context).smallBody,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.pin_drop_sharp,
                        size: 18,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '03-04-2023, 11:00am - 2:00pm',
                        style: typography(context).smallBody,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.pin_drop_sharp,
                        size: 18,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text('Mumbai Stadium, Mumbai, India',
                          style: typography(context).smallBody),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 48,
            height: 45.0,
            margin: const EdgeInsets.only(left: 7),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/barr.png'),
              fit: BoxFit.cover,
            )),
          ),
        ],
      ),
    );
  }
}
