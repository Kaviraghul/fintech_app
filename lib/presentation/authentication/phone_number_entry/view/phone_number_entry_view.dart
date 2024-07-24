import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';

class PhoneNumberEntryView extends StatelessWidget {
  const PhoneNumberEntryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Text(
              'Enter your mobile\nnumber',
              style: TextStyle(
                height: 1.1,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '10-digit mobile number',
                  style: TextStyle(fontSize: 12),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter your number",
                      prefixIcon: GestureDetector(
                        onTap: () => showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Scaffold(
                              appBar: AppBar(
                                leading: const SizedBox.shrink(),
                                title: const Text("dfsdfsdfsds"),
                              ),
                              // body: ListView.builder( ite itemBuilder: itemBuilder),
                            );
                          },
                        ),
                        child: const Row(
                          children: [
                            Text(
                              '+91',
                              style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              size: 25,
                              Icons.arrow_drop_down_sharp,
                              color: AppColors.grey,
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "By proceeding, you agree with INDmoney's terms and conditions and privacy policy.",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF33a34d)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Get OTP",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Trusted by more than 80 lakh+ Indians",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
