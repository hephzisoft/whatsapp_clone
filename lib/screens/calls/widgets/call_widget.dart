import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/build_context_extension.dart';
import 'package:whatsapp_clone/common/utils/colors/app_colors.dart';
import 'package:whatsapp_clone/common/utils/images/image_res.dart';





// thanks for watching 


Widget callItem(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    margin: const EdgeInsets.only(bottom: 10),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            profilepics,
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hephzisoft'),
            Row(
              children: [
                Icon(
                  Icons.arrow_outward,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('December 11, 12:33 PM'),
              ],
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.call,
            color: context.screenBrightness == Brightness.light
                ? lightPrimaryColor
                : darkPrimaryColor,
          ),
        )
      ],
    ),
  );
}
