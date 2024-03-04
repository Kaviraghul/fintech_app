import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

class AppBarHeader {
  PreferredSizeWidget header = AppBar(
    actions: [
      const SizedBox(
        width: 20,
      ),
      const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://img.freepik.com/free-photo/close-up-portrait-cheerful-glamour-girl-with-cute-make-up-smiling-white-teeth-looking-happy-camera-standing-blue-background_1258-70300.jpg?w=1380&t=st=1709578082~exp=1709578682~hmac=3e6d6b2deab45c6c0a9a316701d85dda97a872e4712344d58bd27aca776649c2",
        ),
        backgroundColor: Colors.amber,
      ),
      const SizedBox(
        width: 15,
      ),
      Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: AppValues.s10, horizontal: AppValues.s13),
          decoration: const BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: const Text("Search 'Amazon'"),
        ),
      ),
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.notifications_none_outlined,
      ),
      const SizedBox(
        width: 15,
      ),
    ],
  );
}
