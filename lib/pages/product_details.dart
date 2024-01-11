import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_bazar/pages/added_product_list.dart';
import 'package:online_bazar/pages/products_description.dart';

class ProductDetails extends StatefulWidget {
  var _product;
  ProductDetails(this._product);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  addToCart() {
    addedProduct.add({
      'name': widget._product["product-name"],
      'img': widget._product["product-img"],
      'price': widget._product["product-price"],
    });
  }
  // Future addToCart() async {
  //   final FirebaseAuth _auth = FirebaseAuth.instance;
  //   var currentUser = _auth.currentUser;
  //   CollectionReference _collectionRef = FirebaseFirestore.instance.collection("users-cart-items");
  //   return _collectionRef.doc(currentUser!.email).collection("items").doc().set({
  //     "name": widget._product["product-name"],
  //     "price": widget._product["product-price"],
  //     "images": widget._product["product-img"],
  //   }).then((value) => print("Added to cart"));
  // }

  // Future addToFavourite() async {
  //   final FirebaseAuth _auth = FirebaseAuth.instance;
  //   var currentUser = _auth.currentUser;
  //   CollectionReference _collectionRef = FirebaseFirestore.instance.collection("users-favourite-items");
  //   return _collectionRef.doc(currentUser!.email).collection("items").doc().set({
  //     "name": widget._product["product-name"],
  //     "price": widget._product["product-price"],
  //     "images": widget._product["product-img"],
  //   }).then((value) => print("Added to favourite"));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
        ),
        actions: [
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("users-favourite-items")
                .doc(FirebaseAuth.instance.currentUser!.email)
                .collection("items")
                .where("name", isEqualTo: widget._product['product-name'])
                .snapshots(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Text("");
              }
              return Padding(
                padding: const EdgeInsets.only(right: 8),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  // color: Colors.blueAccent,
                  child: Image.network(
                    widget._product["product-img"],
                    fit: BoxFit.cover,
                  )),

              SizedBox(
                height: 20,
              ),

              Text(
                widget._product['product-name'],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),

              Text(
                "${widget._product['product-price'].toString()}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),
              ),
              SizedBox(
                height: 4.sp,
              ),
              Text(
                widget._product['product-description'],
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              //Divider(),
              SizedBox(
                width: 1.sw,
                height: 40.h,
                child: ElevatedButton(
                  onPressed: () => addToCart(),
                  child: Text(
                    "Add to cart",
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    elevation: 3,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
