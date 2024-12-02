import 'package:travel_app_v2/assets/app_images.dart';

class Place {
  String country;
  String city;
  String image;
  String rating;
  String weather;
  String flightTime;
  String cityDesc;
  String iconDesc;
  String price;

  Place({
    required this.country,
    required this.city,
    required this.image,
    required this.rating,
    required this.weather,
    required this.flightTime,
    required this.cityDesc,
    required this.iconDesc,
    required this.price,
  });
}


var indonesiaPlaceList = [
  Place(
    country: 'Indonesia',
    city: 'Bali',
    image: AppImages.bali,
    rating: '4.5',
    weather: '31',
    flightTime: '4',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '1.500.000'
  ),
  Place(
    country: 'Indonesia',
    city: 'Bukittinggi',
    image: AppImages.bukittinggi,
    rating: '4.4',
    weather: '28',
    flightTime: '2',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '1.200.000'
  ),
  Place(
    country: 'Indonesia',
    city: 'Yogyakarta',
    image: AppImages.yogyakarta,
    rating: '4.6',
    weather: '26',
    flightTime: '2',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '1.100.000'
  ),
];

var jepangPlaceList = [
  Place(
    country: 'Jepang',
    city: 'Osaka',
    image: AppImages.osaka,
    rating: '4.8',
    weather: '24',
    flightTime: '6',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.800.000'
  ),
  Place(
    country: 'Jepang',
    city: 'Tokyo',
    image: AppImages.tokyo,
    rating: '4.7',
    weather: '24',
    flightTime: '6',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.900.000'
  ),
  Place(
    country: 'Jepang',
    city: 'Kyoto',
    image: AppImages.kyoto,
    rating: '4.6',
    weather: '26',
    flightTime: '7',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.700.000'
  ),
];

var amerikaPlaceList = [
  Place(
    country: 'Amerika',
    city: 'New York',
    image: AppImages.newYork,
    rating: '4.4',
    weather: '34',
    flightTime: '8',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '3.200.000'
  ),
  Place(
    country: 'Amerika',
    city: 'California',
    image: AppImages.california,
    rating: '4.5',
    weather: '35',
    flightTime: '8',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '3.400.000'
  ),
  Place(
    country: 'Amerika',
    city: 'Lousiana',
    image: AppImages.louisiana,
    rating: '4.6',
    weather: '32',
    flightTime: '8',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '3.000.000'
  ),
];

var afrikaPlaceList = [
  Place(
    country: 'Afrika',
    city: 'Cape Town',
    image: AppImages.capeTown,
    rating: '4.3',
    weather: '30',
    flightTime: '6',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.000.000'
  ),
  Place(
    country: 'Afrika',
    city: 'Marrakech',
    image: AppImages.marrakech,
    rating: '4.1',
    weather: '33',
    flightTime: '7',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.400.000'
  ),
  Place(
    country: 'Afrika',
    city: 'Cairo',
    image: AppImages.cairo,
    rating: '4.4',
    weather: '38',
    flightTime: '7',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.900.000'
  ),
];

var allPlaceList = [
  Place(
    country: 'Indonesia',
    city: 'Bali',
    image: AppImages.bali,
    rating: '4.5',
    weather: '31',
    flightTime: '4',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '1.500.000'
  ),
  Place(
    country: 'Indonesia',
    city: 'Bukittinggi',
    image: AppImages.bukittinggi,
    rating: '4.4',
    weather: '28',
    flightTime: '2',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '1.200.000'
  ),
  Place(
    country: 'Indonesia',
    city: 'Yogyakarta',
    image: AppImages.yogyakarta,
    rating: '4.6',
    weather: '26',
    flightTime: '2',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '1.100.000'
  ),
  Place(
    country: 'Jepang',
    city: 'Osaka',
    image: AppImages.osaka,
    rating: '4.8',
    weather: '24',
    flightTime: '6',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.800.000'
  ),
  Place(
    country: 'Jepang',
    city: 'Tokyo',
    image: AppImages.tokyo,
    rating: '4.7',
    weather: '24',
    flightTime: '6',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.900.000'
  ),
  Place(
    country: 'Jepang',
    city: 'Kyoto',
    image: AppImages.kyoto,
    rating: '4.6',
    weather: '26',
    flightTime: '7',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.700.000'
  ),
  Place(
    country: 'Amerika',
    city: 'New York',
    image: AppImages.newYork,
    rating: '4.4',
    weather: '34',
    flightTime: '8',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '3.200.000'
  ),
  Place(
    country: 'Amerika',
    city: 'California',
    image: AppImages.california,
    rating: '4.5',
    weather: '35',
    flightTime: '8',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '3.400.000'
  ),
  Place(
    country: 'Amerika',
    city: 'Lousiana',
    image: AppImages.louisiana,
    rating: '4.6',
    weather: '32',
    flightTime: '8',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '3.000.000'
  ),
  Place(
    country: 'Afrika',
    city: 'Cape Town',
    image: AppImages.capeTown,
    rating: '4.3',
    weather: '30',
    flightTime: '6',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.000.000'
  ),
  Place(
    country: 'Afrika',
    city: 'Marrakech',
    image: AppImages.marrakech,
    rating: '4.1',
    weather: '33',
    flightTime: '7',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.400.000'
  ),
  Place(
    country: 'Afrika',
    city: 'Cairo',
    image: AppImages.cairo,
    rating: '4.4',
    weather: '38',
    flightTime: '7',
    cityDesc: 'Dolore sunt nulla excepteur quis. Veniam elit quis incididunt et ullamco minim anim ex sunt nostrud excepteur nulla exercitation. Est proident proident minim ullamco ullamco ad officia ex nostrud sunt minim eiusmod exercitation mollit. Deserunt sunt fugiat sunt deserunt aute ullamco officia consectetur id ad. Nostrud duis sit proident in. Dolor aliqua esse sunt dolore sit aliquip mollit reprehenderit excepteur reprehenderit in ea commodo deserunt.',
    iconDesc: 'Nostrud pariatur veniam ullamco magna elit anim est cillum occaecat eiusmod ex.',
    price: '2.900.000'
  ),
];