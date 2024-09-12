import 'package:cairo/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../network_api/moova_api/apiTicketManager.swagger.dart';
//import '../../model/transportation/product.dart';

class UrbanCard extends StatelessWidget {
  final Product data;

  const UrbanCard({Key? key, required this.data}) : super(key: key);

  formatTime(String value) {
    var inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ss');
    var inputDate = inputFormat.parse(value); // <-- dd/MM 24H format

    var outputFormat = DateFormat('HH:mm');
    var outputDate = outputFormat.format(inputDate);

    return outputDate;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: AppColors.grey, borderRadius: BorderRadius.circular(12)),
        width: double.infinity,
        child: Column(
          children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'TITLE',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      data.productName.toString(),
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
            Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'TYPE',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      data.productTypeDesc.toString(),
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Icon(
                  Icons.directions,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    'Validity: ${data.usageParameters?.validityPeriods?[0].standardDuration} ${data.usageParameters?.validityPeriods?[0].validityPeriodName}',
                    maxLines: 2,
                    // overflow: TextOverflow.ellipsis,

                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.directions_bus,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  data.scopingValidityParameters!.services!.first!.scopingValidityParameterName!,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}