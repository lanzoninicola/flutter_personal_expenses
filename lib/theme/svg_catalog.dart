import 'package:flutter_svg/svg.dart';

class SvgCatalog {
  List<SvgPicture> _catalog = [
    SvgPicture.asset('assets/images/store.svg', semanticsLabel: 'Store'),
    SvgPicture.asset('assets/images/nodata.svg', semanticsLabel: 'NoData'),
  ];

  SvgPicture getImage(String label) {
    print(label);
    List<SvgPicture> elementsFound = [];
    SvgPicture placeholder = SvgPicture.asset('assets/images/noimage.svg',
        semanticsLabel: 'NoImage');

    elementsFound =
        _catalog.where((element) => element.semanticsLabel == label).toList();

    print(elementsFound);
    if (elementsFound.length > 0) {
      return elementsFound[0];
    }

    return placeholder;
  }
}
