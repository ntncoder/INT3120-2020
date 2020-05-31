List<String> lengthUnits = ["mét","ki-lô-mét","xăng-ti-mét","mi-li-mét","mi-cro-mét","nano-mét","feet","inch","yard",
                            "dặm","hải lý","năm ánh sáng","khoảng cách mặt trăng","pc","đơn vị thiên văn"];
List<String> massUnits = ["ki-lô-gam","gam","mi-li-gam","mi-cro-gam","tấn","pound","quintal","ounce","carat","stone"];
List<String> timeUnits = ["giây", "mi-li-giây", "mi-cro-giây", "phút", "giờ", "ngày", "tuần", "năm"];
List<String> areaUnits = ["mét vuông","ki-lô-mét vuông", "xăng-ti-mét vuông", "mi-li-mét vuông", "micron", "héc-ta","acre","dặm vuông","square foot","square inch"];
List<String> volumeUnits = ["mét khối", "xăng-ti-mét khối", "mi-li-mét khối", "hecto-lít","lít", "xăng-ti-lít", "mi-li-lít","cubic inch","cubic yard","cubic feet","acre-foot"];
List<String> temperatureUnits = ["độ C", "độ F", "độ K"];
List<String> speedUnits = ["kmps","m/s","kmph","mach","knot","mph","fps","inch/s","vận tốc ánh sáng"];
List<String> baseUnits = ["decimal","binary","octal","hexadecimal"];

List<String> getList(String type){
  if(type == "Độ dài")
    return lengthUnits;
  else if(type == "Khối lượng")
    return massUnits;
  else if(type == "Thời gian")
    return timeUnits;
  else if(type == "Diện tích")
    return areaUnits;
  else if(type == "Thể tích")
    return volumeUnits;
  else if(type == "Nhiệt độ")
    return temperatureUnits;
  else if(type == "Vận tốc")
    return speedUnits;
  else
    return baseUnits;
}

var conversionFactors = {
  "ki-lô-mét" : 1000,
  "mét" : 1,
  "xăng-ti-mét" : 0.01,
  "mi-li-mét" : 0.001,
  "mi-cro-mét" : 1e-6,
  "nano-mét" : 1e-9,
  "hải lý" : 1852,
  "dặm" : 1609.344,
  "yard" : 0.9144,
  "feet" : 0.3048,
  "inch" : 0.0254,
  "pc" : 3.08567758e16,
  "khoảng cách mặt trăng" : 384401000,
  "đơn vị thiên văn" : 1.49597871e11,
  "năm ánh sáng" : 9.46073047e15,

  "giây" : 1,
  "mi-li-giây" : 0.001,
  "mi-cro-giây" : 1e-6,
  "phút" : 60,
  "giờ" : 3600,
  "ngày" : 86400,
  "tuần" : 604800,
  "năm" : 31536000,

  "ki-lô-gam" : 1,
  "gam" : 0.001,
  "mi-li-gam" : 1e-6,
  "mi-cro-gam" : 1e-9,
  "tấn" : 1000,
  "pound" : 0.45359237,
  "quintal" : 100,
  "ounce" : 0.0283495231,
  "carat" : 0.0002,
  "stone" : 0.157473044,

  "mét vuông" : 1,
  "ki-lô-mét vuông" : 1e6,
  "xăng-ti-mét vuông" : 0.0001,
  "mi-li-mét vuông" : 1e-6,
  "micron" : 1e-12,
  "héc-ta" : 10000,
  "acre" : 4046.856,
  "dặm vuông" : 2589988.11,
  "square foot" : 0.09290304,
  "square inch" : 0.00064516,

  "mét khối" : 1,
  "xăng-ti-mét khối" : 1e-6,
  "mi-li-mét khối" : 1e-9,
  "hecto-lít" : 0.1,
  "lít" : 0.001,
  "xăng-ti-lít" : 1e-5,
  "mi-li-lít" : 1e-6,
  "cubic inch" : 1.6387064e-5,
  "cubic yard" : 0.764554858,
  "cubic feet" : 0.0283168466,
  "acre-foot" : 1234,

  "kmps" : 1000,
  "m/s" : 1,
  "kmph" : 0.277777778,
  "mach" : 340.3,
  "knot" : 0.514444444,
  "mph" : 0.44704,
  "fps" : 0.3048,
  "inch/s" : 0.0254,
  "vận tốc ánh sáng" : 299792458
};

String convert(String type, String srcUnit, String destUnit, String inputValue){
  
  if(type == "Hệ cơ số"){

    int baseTemp;
    if(srcUnit == "binary")
      baseTemp = int.parse(inputValue, radix: 2);
    else if(srcUnit == "hexadecimal")
      baseTemp = int.parse(inputValue, radix: 16);
    else if(srcUnit == "octal")
      baseTemp = int.parse(inputValue, radix: 8);
    else
      baseTemp = int.parse(inputValue);
      
    String baseRet;
    
    if(destUnit == "binary")
      baseRet = baseTemp.toRadixString(2);
    else if(destUnit == "hexadecimal")
      baseRet = baseTemp.toRadixString(16);
    else if(destUnit == "octal")
      baseRet = baseTemp.toRadixString(8);
    else
      baseRet = baseTemp.toRadixString(10);
    return baseRet;
  }
  else if(type == "Nhiệt độ"){

    double value = double.parse(inputValue);
    if(srcUnit == "độ F")
      value = (value - 32) / 1.8;
    else if(srcUnit == "độ K")
      value = value - 273.15;
    if(destUnit == "độ K")
      value = value + 273.15;
    else if(destUnit == "độ F")
      value = value * 1.8 + 32;
    return value.toStringAsFixed(6);
  }
  else{
    double value = double.parse(inputValue);
    value = value * conversionFactors[srcUnit] * (1 / conversionFactors[destUnit]);
    if(value == 0)
      return "0";
    if(value < 1e-5)
      return value.toStringAsExponential(6);
    else
      return value.toStringAsFixed(6);
  }
}