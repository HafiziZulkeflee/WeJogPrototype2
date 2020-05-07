import 'package:flutter/material.dart';
import 'package:wejog1/model/user.dart';
import 'package:wejog1/screens/home/tabs/bloodPressureTracker.dart';
import 'package:wejog1/screens/home/tabs/calorieTracker.dart';
import 'package:wejog1/screens/home/tabs/logout.dart';
import 'package:wejog1/screens/home/tabs/profile.dart';
import 'package:wejog1/screens/home/tabs/settings.dart';
import 'package:wejog1/screens/home/tabs/todo.dart';

/*menu header*/
class MenuHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = new User();
    return DrawerHeader(
      child: Text(
        'Hi ' + user.fullName,
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      decoration: BoxDecoration(
        color: Colors.green,
      ),
    );
  }
}
/*end of menu header*/

/*menu items*/
class MenuItemList extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    final menuItems = ["Profile", "Calorie Tracker", "Blood Pressure Tracker", "Todo List", "Settings", "Logout"];
    final menuIcons = [Icons.account_circle, Icons.fastfood, Icons.accessibility_new, Icons.list, Icons.settings, Icons.exit_to_app];
    final routeDestinations = [UserProfile(), CalorieTracker(), BloodPressureTracker(), TodoScreen(), Settings(), Logout()];
     return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return ListTile(        
          leading: Icon(menuIcons[index]),
          title: Text(menuItems[index]),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => routeDestinations[index]),
            );
          },
         );
        },
      );  
     }
}
/*end of menu items*/