import 'package:flutter/material.dart';

class  ListTileFormat  extends StatelessWidget {
  const ListTileFormat ({
   super.key,
   this.trailing,
   required  this.title,
   required this.icon,
   this.ontap
  });

  final Widget? trailing;
  final String title;
  final IconData icon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile( 
      leading: Icon(icon) ,
      title: Text(title) ,
      trailing: trailing,
      onTap: ontap,

    );
  }
}