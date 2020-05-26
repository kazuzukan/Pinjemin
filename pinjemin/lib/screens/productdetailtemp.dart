import 'package:flutter/material.dart';
import 'package:pinjemin/components/bottombutton.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';



class ProductDetailTemp extends StatelessWidget {
  static const tag = '/product-detail';
  //final String title = "Upload Image Demo";
  //bool type  true: offer, false: request
  //final bool type;
  //final int prodId;
  //ProductDetailScreen({this.type, this.prodId});



 
@override
  Widget build(BuildContext context) {
    
    /*final loadedProduct = Provider.of<Products>(context, listen: false,)
    .findById(this.prodId, this.type);
    String type;
    if (this.type) {
      type = 'Penawaran';
    } 
    else {
      type = 'Permintaan';
    }*/


   return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
        //title: Text("Detail $type"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container( 
              height: 400,
              color: Colors.white,
              width: double.infinity,
              child: Image.asset( //image.network
                'assets/pentab.jpg',
                //loadedProduct.image,
                fit: BoxFit.fill,
              )
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: 60, 
                maxHeight: double.infinity,
                minWidth: double.infinity, 
                maxWidth: double.infinity),
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(5,0,5,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pentablet Wacom One Small CTL -472 Biru', 
                    textAlign: TextAlign.justify, 
                    style: TextStyle(fontSize: 18),
                  ), //loadproductname
                  Text(
                    'Rp. 100.000',
                    //'\$${loadedProduct.price}',
                    style: TextStyle(
                      color: Color.fromARGB(255,223, 3, 93),
                      fontSize: 16, fontWeight: FontWeight.bold
                    ),
                  ),
                ]
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: 80, 
                maxHeight: double.infinity,
                minWidth: double.infinity,
                maxWidth: double.infinity
                ),
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(5,10,5,10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Rincian produk', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 14)
                      ),
                  Text(
                    'Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet',
                    //loadedProduct.desc,
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),
                ],
              ),
            )
          ],
        ),   
      ),
    bottomNavigationBar: BottomButtonBar(),
    );
  }
}
