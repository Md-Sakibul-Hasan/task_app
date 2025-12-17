import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatefulWidget {
  final VoidCallback? onSearchPressed;

  const CustomDatePicker({
    super.key,
    this.onSearchPressed,
  });

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime? fromDate;
  DateTime? toDate;

  void _handleSearch() {
    // Validate dates
    if (fromDate == null) {
      Get.snackbar(
        'Validation Error',
        'Please select a From Date',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red.shade100,
        colorText: Colors.red.shade900,
      );
      return;
    }

    if (toDate == null) {
      Get.snackbar(
        'Validation Error',
        'Please select a To Date',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red.shade100,
        colorText: Colors.red.shade900,
      );
      return;
    }

    // If validation passes, call the callback
    if (widget.onSearchPressed != null) {
      widget.onSearchPressed!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          // From Date picker
          Expanded(
            child: _buildDateField(
              label: 'From Date',
              isFromDate: true,
            ),
          ),
          const SizedBox(width: 6),
          // To Date picker
          Expanded(
            child: _buildDateField(
              label: 'To Date',
              isFromDate: false,
            ),
          ),
          const SizedBox(width: 6),
          // Search button
          Container(
            width: 39,
            height: 39,
            decoration: BoxDecoration(
              color: const Color(0xFFE2EBF1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFF0096FC),
                width: 1,
              ),
            ),
            child: IconButton(
              onPressed: _handleSearch,
              icon: const Icon(
                Icons.search,
                color: Color(0xFF0096FC),
                size: 24,
              ),
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateField({
    required String label,
    required bool isFromDate,
  }) {
    return InkWell(
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: Get.context!,
          initialDate: DateTime.now(),
          firstDate: DateTime(2020),
          lastDate: DateTime(2030),
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Color(0xFF0096FC),
                  onPrimary: Colors.white,
                  onSurface: Colors.black,
                ),
              ),
              child: child!,
            );
          },
        );
        if (pickedDate != null) {
          setState(() {
            if (isFromDate) {
              fromDate = pickedDate;
            } else {
              toDate = pickedDate;
            }
          });
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFFD1D5DB),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                isFromDate
                    ? (fromDate != null
                        ? DateFormat('dd/MM/yyyy').format(fromDate!)
                        : 'From Date')
                    : (toDate != null
                        ? DateFormat('dd/MM/yyyy').format(toDate!)
                        : 'To Date'),
                style: TextStyle(
                  fontSize: 12,
                  color: (isFromDate ? fromDate : toDate) != null
                      ? const Color(0xFF1F2937)
                      : const Color(0xFF6B7280),
                  fontWeight: (isFromDate ? fromDate : toDate) != null
                      ? FontWeight.w500
                      : FontWeight.w400,
                ),
              ),
            ),
            SvgPicture.asset(
              'assets/icons/calendar.svg',
            ),
          ],
        ),
      ),
    );
  }
}
