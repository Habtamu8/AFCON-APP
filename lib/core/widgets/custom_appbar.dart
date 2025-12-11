import 'package:afcon_app/core/constants/device_utilites.dart';
import 'package:flutter/material.dart';


class CustomAppbar extends StatelessWidget  implements PreferredSizeWidget{
  const CustomAppbar({  
     this.title,
     this.showmenuItem=false,
     this.leadingIcon,
     this.action,
     this.leadingOnPressed,
     this.bgcolor = const Color.fromARGB(255, 52, 57, 209),
     super.key    
    });
    final Widget? title;
    final bool showmenuItem;
    final IconData? leadingIcon;
    final List<Widget>? action;
    final VoidCallback?  leadingOnPressed;
    final Color? bgcolor;

  @override
  Widget build(BuildContext context) {
    return 
    // Padding(
    //   padding: EdgeInsets.symmetric(horizontal: MaSize.sm),
    //   child:   
       AppBar(
        backgroundColor: bgcolor,
        automaticallyImplyLeading: false,
        leading: showmenuItem ?
                 IconButton(onPressed: ()=> Scaffold.of(context).openDrawer(), icon:const Icon(Icons.menu),color: Colors.white) : null,
                //  leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon:Icon(leadingIcon)) : null,
        title: title,
        actions: action      
      );
    // );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(AFCONDeviceUtility.getAppBarHeight());
}