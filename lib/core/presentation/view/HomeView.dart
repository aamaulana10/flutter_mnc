import 'package:belajar_flutter/core/data/remote/HomeService.dart';
import 'package:belajar_flutter/core/domain/model/BannerModel.dart';
import 'package:belajar_flutter/core/presentation/view/DetailView.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  var data = ["aa", "lukman", "carlos", "bang kamal"];
  var service = HomeService();

  late BannerModel bannerModel;

  void getDataBanner() async{

    var data = await service.getBanner();

    setState(() {
      bannerModel = data;
    });

  }

  // first function that callede when UI initialihzsudhi
  @override
  void initState() {
    super.initState();

    getDataBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Flutter")
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bannerModel.data?.length,
                padding: EdgeInsets.only(left: 4, right: 4),
                itemBuilder: (ctx, idx) {

                  var data = bannerModel.data?[idx];

                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(
                        email: "aaganteng@gmail.com",
                      )));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(data?.imageUrl ?? "")
                          )
                        ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bannerModel.data?.length,
                padding: EdgeInsets.only(left: 4, right: 4),
                itemBuilder: (ctx, idx) {

                  var data = bannerModel.data?[idx];

                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(
                        email: "aaganteng@gmail.com",
                      )));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(data?.imageUrl ?? "")
                          )
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bannerModel.data?.length,
                padding: EdgeInsets.only(left: 4, right: 4),
                itemBuilder: (ctx, idx) {

                  var data = bannerModel.data?[idx];

                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(
                        email: "aaganteng@gmail.com",
                      )));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(data?.imageUrl ?? "")
                          )
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (ctx, idx) {

                  return Container(
                    height: 180,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("lib/assets/image/naufal.png")
                        )
                    ),
                  );
                },
              ),
            ),
          ],
        )
      ),
    );
  }
}
