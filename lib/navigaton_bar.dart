import 'package:badges/badges.dart' as badges;
import 'const/const.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var favController = Get.find<FavourateController>();
    var notificationController = Get.find<NotificationController>();
    var cartController = Get.find<CartController>();
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);

    List<Widget> buildScreens() {
      return [
        const NotificationScreen(),
        const CartScreen(),
        const FavourateScreen()
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Obx(() => badges.Badge(
                badgeContent:
                    Text("${notificationController.notificationCounter.value}"),
                badgeStyle: const badges.BadgeStyle(badgeColor: Colors.blue),
                child: const Icon(Icons.notifications),
              )),
          title: "Notification",
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Obx(() => badges.Badge(
                badgeContent: Text("${cartController.cartCounter.value}"),
                badgeStyle: const badges.BadgeStyle(badgeColor: Colors.green),
                child: const Icon(Icons.shopping_cart),
              )),
          title: ("Cart"),
          activeColorPrimary: Colors.green,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Obx(() => badges.Badge(
                badgeContent: Text("${favController.favCounter.value}"),
                badgeStyle: const badges.BadgeStyle(badgeColor: Colors.red),
                child: const Icon(Icons.favorite),
              )),
          title: "Favourate",
          activeColorPrimary: Colors.red,
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: buildScreens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}
