// View - Home Screen UI
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/item_card_widget.dart';
import '../../widgets/menu_card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();

    return Scaffold(
        backgroundColor: const Color(0xFFE5F4FE),
        appBar: CustomAppBar(
          title: 'SCM',
          onNotificationPressed: controller.onNotificationPressed,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Tab bar
                Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFB6B8D0),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      // Tabs
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // TODO: Switch to Summary tab
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF0096FC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                ),
                                child: const Text(
                                  'Summary',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // TODO: Switch to SLD tab
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: const Text(
                                  'SLD',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // TODO: Switch to Data tab
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: const Text(
                                  'Data',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFB6B8D0),
                        height: 1,
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            // Electricity label
                            const Text(
                              'Electricity',
                              style: TextStyle(
                                color: Color(0xFF979797),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Divider(
                              color: Color(0xFF979797),
                              height: 1,
                              thickness: 1,
                            ),
                            const SizedBox(height: 5),
                            // Circular progress indicator
                            SizedBox(
                              width: 200,
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  // Circle border
                                  SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: CircularProgressIndicator(
                                      value: 1,
                                      strokeWidth: 20,
                                      backgroundColor: Colors.grey[200],
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                        Color(0xFF398FC9),
                                      ),
                                    ),
                                  ),
                                  // Center text
                                  const Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Total Power',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '5.53 kw',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // Source/Load Toggle
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        // TODO: Switch to Source
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF0096FC),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: const Text(
                                          'Source',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        // TODO: Switch to Load
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12),
                                        child: const Text(
                                          'Load',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 2,
                              decoration: BoxDecoration(
                                color: const Color(0xFFD1D1D6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 300,
                              child: Obx(
                                () => ListView.builder(
                                  itemCount: controller.dataItems.length,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context, index) {
                                    final item = controller.dataItems[index];
                                    return ItemCardWidget(
                                      title: item.title,
                                      statusText: item.statusText,
                                      statusColor: item.statusColor,
                                      icon: item.icon,
                                      iconBackgroundColor:
                                          item.iconBackgroundColor,
                                      titleIconColor: item.titleIconColor,
                                      data1Label: item.data1Label,
                                      data1Value: item.data1Value,
                                      data2Label: item.data2Label,
                                      data2Value: item.data2Value,
                                      onTap: () =>
                                          controller.onDataItemTap(item),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Menu Grid
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 8,
                        childAspectRatio: 3.3,
                      ),
                      itemCount: controller.menuItems.length,
                      itemBuilder: (context, index) {
                        final item = controller.menuItems[index];
                        return MenuCardWidget(
                          title: item.title,
                          icon: item.icon,
                          iconColor: item.iconColor,
                          onTap: () => controller.onMenuItemTap(item),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ));
  }
}
