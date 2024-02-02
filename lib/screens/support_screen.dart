import 'package:bime_chei/constants/colors.dart';
import 'package:bime_chei/constants/iconsax_icons.dart';
import 'package:bime_chei/utils/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({
    super.key,
  });

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

Map cafeAssistantData = {
  "assistantName": "روژان فروزانفر",
  "assistantProfileImage": "assets/images/person4.png",
  "lastSeen": "آخرین بازدید 59 : 06",
};

class _SupportScreenState extends State<SupportScreen> {
  bool isDarkMode_ = false;

  @override
  Widget build(BuildContext context) {
    isDarkMode_ = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Iconsax.arrow_right_1,
              size: 24,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 80,
              right: 0,
              left: 0,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Divider(),
                    const Text(
                      "پشتیبانی آنلاین",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "لطفا توجه کنید اطلاعات و مشخصات خود را در چت ارسال نکنید و هر سوالی دارید میتونید از پشتیبانی ها بپرسید.",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 12,
                        color: lightGray,
                      ),
                    ),
                    const SizedBox(height: 10),
                    messageBox(
                      messageType: MessageType.reciver,
                      message: "سلام چطوری میتونم کمکتون کنم؟",
                      time: "امروز 50 :06",
                    ),
                    messageBox(
                      messageType: MessageType.sender,
                      message: "سلام یک بیمه خریدم کی بیمه نامه من ارسال میشه؟",
                      time: "امروز 51 :06",
                    ),
                    messageBox(
                      messageType: MessageType.reciver,
                      message:
                          "بیمه نامه شما تا 24 ساعت آینده به شما ارسال خواهد شد.",
                      time: "امروز 52 :06",
                    ),
                    messageBox(
                      messageType: MessageType.sender,
                      message: "ممنون از شما.",
                      time: "امروز 53 :06",
                    ),
                    messageBox(
                      messageType: MessageType.reciver,
                      message: "موفق باشید.",
                      time: "امروز 54 :06",
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isDarkMode_ ? secondaryBlack : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(2),
                          backgroundColor: orange,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          // maximumSize: const Size(44, 44),
                          // minimumSize: const Size(44, 44),
                        ),
                        onPressed: () {},
                        child: Text(
                          "ارسال",
                          style: TextStyle(
                            fontSize: 16,
                            color: isDarkMode_ ? primaryBlack : white,
                          ),
                        )),
                    const Expanded(
                      child: TextField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                          hintText: "پیام خود را بنویسید...",
                          hintStyle: TextStyle(
                              color: lightGray,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget messageBox({
    required MessageType messageType,
    required String message,
    required String time,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Visibility(
            visible: messageType == MessageType.reciver,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: isDarkMode_ ? orange.withOpacity(0.2) : lightOrange,
              ),
              child: Text(
                "پشتیبانی",
                style: TextStyle(
                  fontSize: 14,
                  color: isDarkMode_ ? white : darkGray,
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: messageType == MessageType.sender
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: isDarkMode_ ? secondaryBlack : gray50,
                ),
                child: Text(
                  message,
                  textDirection: TextDirection.rtl,
                  softWrap: true,
                  style: const TextStyle(
                    color: darkGray,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: messageType == MessageType.sender,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: orange,
              ),
              child: const Text(
                "شما",
                style: TextStyle(
                  fontSize: 14,
                  color: white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum MessageType { sender, reciver }
