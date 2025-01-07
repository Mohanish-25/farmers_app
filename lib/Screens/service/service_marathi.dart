import 'package:farmers_app/Componets/custom_drawer_and_appbar_marathi.dart';
import 'package:farmers_app/Componets/header.dart';
import 'package:farmers_app/Screens/listings/listings_mar.dart';
import 'package:flutter/material.dart';

class ServiceMarathiScreen extends StatelessWidget {
  final Function()? onContinue;
  final Function()? onBackPress;
  final bool isGovernmentSchemeSelected;
  final bool isELearningSelected;
  final Function(bool)? onGovernmentSchemeSelect;
  final Function(bool)? onELearningSelect;

  const ServiceMarathiScreen({
    super.key,
    this.onContinue,
    this.onBackPress,
    this.isGovernmentSchemeSelected = false,
    this.isELearningSelected = false,
    this.onGovernmentSchemeSelect,
    this.onELearningSelect,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      endDrawer: CustomDrawerAppBar.buildDrawer(context),
      body: Column(
        children: [
          CustomDrawerAppBar(
            onBackPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Choose Service Text
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.05),
                    child: Text(
                      'आपली सेवा निवडा',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // Service Options
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                      vertical: screenHeight * 0.05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildServiceButton(
                          context,
                          'सरकारी\nयोजना',
                          isGovernmentSchemeSelected,
                          (isSelected) {
                            if (isSelected) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ListingsMarathiScreen(),
                                ),
                              );
                            }
                            onGovernmentSchemeSelect?.call(isSelected);
                          },
                        ),
                        _buildServiceButton(
                          context,
                          'ई-लर्निंग',
                          isELearningSelected,
                          onELearningSelect,
                        ),
                      ],
                    ),
                  ),

                  // Continue Button
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceButton(
    BuildContext context,
    String text,
    bool isSelected,
    Function(bool)? onSelect,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => onSelect?.call(!isSelected),
      child: Container(
        width: screenWidth * 0.4,
        height: screenHeight * 0.12,
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.02,
          vertical: screenHeight * 0.01,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFF12723D),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFF12723D),
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: screenWidth * 0.05,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: 0.15,
              height: 1.4,
            ),
          ),
        ),
      ),
    );
  }
}