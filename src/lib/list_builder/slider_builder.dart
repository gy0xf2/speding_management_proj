import 'package:carousel_slider/carousel_slider.dart';
import 'package:financialmng/common_widget/transaction_item.dart';
import 'package:flutter/material.dart';

class SliderBuilder extends StatefulWidget {
  final List transactionList;
  final Function(int) onIndexChanged;
  const SliderBuilder(
      {super.key, required this.transactionList, required this.onIndexChanged});

  @override
  State<SliderBuilder> createState() => _SliderBuilderState();
}

class _SliderBuilderState extends State<SliderBuilder> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return SizedBox(
        width: media.width,
        height: media.width * 0.4,
        child: CarouselSlider.builder(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
                widget.onIndexChanged(_currentIndex);
              });
            },
            aspectRatio: 1,
            enableInfiniteScroll: true,
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.5,
            enlargeFactor: 0.5,
            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          ),
          itemCount: widget.transactionList.length,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
            var transaction = widget.transactionList[index];

            return TransactionItem(transaction: transaction);
          },
        ));
  }
}
