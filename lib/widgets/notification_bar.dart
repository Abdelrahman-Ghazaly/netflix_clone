import 'package:flutter/material.dart';

class NotificationBar extends StatelessWidget {
  const NotificationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
                size: 25.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
