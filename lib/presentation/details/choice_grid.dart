import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:swift_cafe/presentation/details/controllers/details.controller.dart';
import 'package:velocity_x/velocity_x.dart';

class MilkGrid extends StatelessWidget {
  const MilkGrid({
    super.key,
    required this.controller,
  });

  final DetailsController controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: 6 / 2,
      ),
      itemCount: controller.milkData.length, // Number of grid items
      itemBuilder: (context, index) {
        return controller.milkData[index][0] == null
            ? SizedBox()
            : Container(
                // padding: EdgeInsets.symmetric(horizontal: 8),
                margin: EdgeInsets.zero,
                child: Row(
                  children: [
                    Obx(
                      () => Switch(
                        value: controller.milkData[index][1]
                            as bool, // Cast to bool
                        onChanged: (bool value) {
                          controller.toggleMilkData(
                              index, value); // Update the state
                        },
                      ).scale(scaleValue: 0.6),
                    ),
                    Expanded(
                      child: Text(
                        controller.milkData[index][0] as String,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              );
      },
    );
  }
}
