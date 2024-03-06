
import 'package:flutter/material.dart';
import 'package:flutter_application_4/chats/usermodel.dart';
import 'package:flutter_application_4/colors.dart';

class FavouriteContacts extends StatelessWidget {
  const FavouriteContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Favourite Contacts',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 120,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(chats[index].image),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        chats[index].name.split(' ')[0],
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: chats.length),
          ),
        ],
      ),
    );
  }
}
