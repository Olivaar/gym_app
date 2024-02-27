import 'package:flutter/material.dart';
import '../../utils/app_routs.dart';

class AppBarGa extends StatelessWidget implements PreferredSizeWidget {

  final bool automaticallyImplyLeading;

  const AppBarGa({super.key, this.automaticallyImplyLeading = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      elevation: 10,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: const Text(
        'GYM APP',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Impact',
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRouts.ABOUT_THE_APP_PAGE);
          },
          icon: const Icon(
            Icons.help_outline,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRouts.SETTINGS_PAGE);
          },
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRouts.LOGIN_PAGE);
          },
          icon: const Icon(
            Icons.output_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
