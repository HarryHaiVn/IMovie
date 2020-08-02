import 'package:flutter/material.dart';

class ViewFoodsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FoodsListView();
  }
}

class FoodsListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FoodsListViewState();
  }
}

class FoodsListViewState extends State<FoodsListView> {
  final items = [
    'SĂN COMBO HÈ,GOM QUA "NO BỤNG"',
    'MILO DAY 39K/VÉ- NẠP NĂNG LƯỢNG NHẬP HỘI SIÊU ANH HÙNG',
    'MUA VÉ XEM PHIM GIÁ 50K BẰNG THẺ VISA SACOMBANK',
    'MUA 2 VÉ GIÁ 85.000Đ VỚI THẺ TÍN DỤNG HSBC',
    'ƯU ĐÃI TỪ GOLDSPORT',
    'MUA 2 VÉ XEM PHIM 3D VỚI GIÁ 50 QUA ỨNG DỤNG MOMO',
    'MUA THẺ XEM PHIM 79K TỪ VIETTEL PAY',
    'MUA 2 VÉ XEM PHIM 2D TẠI CGV VỚI GIÁ 69K',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemExtent: 250.0,
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(6.0),
                ),
              ),
              child: ClipPath(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://promotion.zalopay.vn/static/promotion/1x_cgvthang12.jpg",
                            ),
                            fit: BoxFit.fill,
//                        colorFilter: ColorFilter.mode(
//                          Colors.black26,
//                          BlendMode.darken,
//                        ),
                          ),
//                      color: Colors.grey,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(items[position],
                          overflow: TextOverflow.ellipsis),
                      trailing: Icon(
                        Icons.book,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
          );
        });
  }
}
