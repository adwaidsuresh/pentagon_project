// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pentagon/providers/api_provider.dart';

class MainPageView extends ConsumerWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final api = ref.watch(apigetpostProvider);
    return SafeArea(
        child: api.when(
      data: (data) => Scaffold(
          body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                  width: 350,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 240, 238, 238),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'orderNo194703',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '05-12-2019',
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 15),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'tracking Number : ',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              ),
                              const TextSpan(
                                text: '   IW2654213541',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Quantity : ',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 15),
                                  ),
                                  const TextSpan(
                                    text: '   3',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Total Amount : ',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 15),
                                  ),
                                  const TextSpan(
                                    text: '   112\$',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 120,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                  border: Border.all(color: Colors.black)),
                              child: const Center(
                                child: Text('Details'),
                              ),
                            ),
                            const Text(
                              'Delivered',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          );
        },
      )),
      error: (error, stackTrace) => Center(
        child: Text('error'),
      ),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
    ));
  }
}
