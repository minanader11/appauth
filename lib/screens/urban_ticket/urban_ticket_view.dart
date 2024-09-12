import 'package:cairo/widgets/urban/urban_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../network_api/moova_api/apiTicketManager.swagger.dart';
//import '../../model/transportation/product.dart';
import '../../repository/urban_ticket_repository.dart';
import '../../resources/images.dart';
import '../../services/api_service.dart';
import '../../values/app_colors.dart';
import 'urban_ticket_view_model.dart';

class UrbanTicketView extends StatefulWidget {
  const UrbanTicketView({super.key});

  @override
  State<UrbanTicketView> createState() => _UrbanTicketViewState();
}

class _UrbanTicketViewState extends State<UrbanTicketView> {
  List<Product> data = [];

  final dio = Dio();

  @override
  void initState() {
    search();
    super.initState();
  }

  void search() async {
    data.clear();

    var urbanTicketRepository =
        UrbanTicketRepository(apiService: ApiService(dio: dio));
    var viewModel =
        UrbanTicketViewModel(urbanTicketRepository: urbanTicketRepository);

    data = (await viewModel.urbanTicketList())!;
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Urban Ticket List"),
          backgroundColor: AppColors.appBarColor,
          elevation: 50,
          shadowColor: const Color(0xff0C1C2E),
          toolbarHeight: 100,
        ),
        body: Stack(
          children: [
            Positioned(
              child: Image.asset(
                Images.bus,
                opacity: const AlwaysStoppedAnimation(.15),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 18,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, i) => UrbanCard(data: data[i])),
                ),
              ],
            )
          ],
        ));
  }
}
