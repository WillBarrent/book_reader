import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(5, 30, 37, 1),
      shape: LinearBorder(),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SideMenuHeader(),
          SideMenuItem(),
        ],
      ),
    );
  }
}

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.sync_alt,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
          const Text(
            'Читаю сейчас',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class SideMenuHeader extends StatelessWidget {
  const SideMenuHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: const DrawerHeader(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.book,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            Text(
              'Читалка',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
