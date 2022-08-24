import 'package:finance/constants/style.dart';
import 'package:finance/widget/custom_text.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: ink07,
          title: const CustomText(
            text: "Transactions",
            color: ink01,
            fontWeight: FontWeight.w600,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: ink02,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: ink02,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 37.4, vertical: 24),
                child: CustomText(
                  text: "Chose which account to transfer to",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: cAccent2, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 17, right: 19),
                          child: CircleAvatar(
                            backgroundColor: ink07,
                            radius: 30,
                            child: Icon(
                              Icons.add,
                              color: ink01,
                              size: 30,
                            ),
                          ),
                        ),
                        CustomText(
                          text: "New Account",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 71, vertical: 34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const CustomText(
                          text: "Recent",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 50,
                          height: 2,
                          color: cActive,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const CustomText(
                            text: "Contacts",
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 50,
                          height: 2,
                          color: ink02,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 44.5),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) =>
                        buildContacts("User ${index + 1}", index),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildContacts(String text, int index) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      onTap: () {},
      horizontalTitleGap: 10,
      leading: CircleAvatar(
        radius: 25,
        backgroundImage:
            NetworkImage("https://randomuser.me/api/portraits/men/1$index.jpg"),
      ),
      trailing: const Icon(Icons.more_horiz),
      title: CustomText(text: text),
    );
  }
}
