import 'package:flutter/material.dart';

import 'hotel.dart';

class DataModel {

  static List<Hotel> hotels = [

    Hotel(
      name: 'Santorini',
      location: 'Greece',
      assetSrc: 'assets/images/hotel-1.jpg',
      price: 488,
      stars: 4.9,
      reviews: 6805,
      description: 'Featuring free WiFi, a restaurant and a seasonal outdoor pool, Santorini Resort offers accommodation in Imerovigli. The resort has a terrace, and guests can enjoy a drink at the bar. Every villa and suite at this resort is air conditioned and is fitted with a flat-screen TV. All rooms feature a seating area to relax. A terrace or balcony are featured in all rooms. All rooms are equipped with a private bathroom equipped with a shower or a bath. For your comfort, you will find bath robes, slippers and free luxury amenities. You can start your day enjoying a rich continental breakfast at the comfort of your suite, enjoying panoramic views to the endless blue of the Aegean Sea. There is babysitting service at the property. The resort also offers bike hire and car hire. The nearest airport is Thira Airport, 6 km from Dome Santorini Resort.',
      ownerName: 'Penelope Patrici',
      ownerStars: 4.5,
      ownerReviews: 1079,
      ownerAssetSrc: '',
      services: {
        '2 Bed' : Icons.bed,
        'Dinner' : Icons.dinner_dining,
        'Hot Tub' : Icons.shower,
        '1 AC' : Icons.air_outlined,
      },
    ),

    Hotel(
      name: 'Hotel Royal',
      location: 'Spain',
      assetSrc: 'assets/images/hotel-2.jpg',
      price: 280,
      stars: 4.8,
      reviews: 5770,
      description: 'Hotel Royal is located 50 meters from Mila\'s House and Diagonal Metro Station. There is a bar on the terrace with a panoramic view of Barcelona. This 4-star hotel also has an internal garden. Hotel Royal is housed in a modern, restored building. It offers stylish air-conditioned rooms with a flat-screen TV, free Wi-Fi and a bathroom with a rain shower. The Batlo house can be reached in 5 minutes from the hotel. Plaza Catalunya and La Rambla are 2 stops from Diagonal metro station. Gràcia is a 5-minute walk away. The tree-lined Rambla de Catalunya is 200 meters away, with charming street cafes.',
      ownerName: 'Pedro Diaz',
      ownerStars: 4.4,
      ownerReviews: 920,
      ownerAssetSrc: '',
      services: {
        '1 Bed' : Icons.bed,
        'Dinner' : Icons.dinner_dining,
        'Hot Tub' : Icons.shower,
        '1 AC' : Icons.air_outlined,
      },
    ),

    Hotel(
      name: 'Anantara',
      location: 'Italy',
      assetSrc: 'assets/images/hotel-3.jpg',
      price: 800,
      stars: 4.7,
      reviews: 7208,
      description: 'Set in an impressive white marble building from the 1800s, Anantara Palazzo Naiadi Rome Hotel - A Leading Hotel of the World is located in Piazza della Repubblica. This luxurious 5-star hotel features a panoramic rooftop terrace with a seasonal plunge pool. Free WiFi is available throughout. Rooms are spacious and elegant, with a mix of classic and modern furnishings. Each room has a marble and mahogany bathroom with luxury toiletries. Some rooms are located in the charming Clementino area, the old papal granary. The grand and bright marble lobby with neoclassical features features high ceilings and relaxing armchairs. Guests have free use of a fitness area, and can book sessions at the wellness centre, which includes a steam bath, hot tub and more. The restaurant serves Italian and international cuisine, and there are various dining options, including the panoramic terrace. Palazzo Naiadi is surrounded by trendy boutiques, bars and restaurants, and is right next to Repubblica Metro Station. Roma Termini Train and Metro Station is 500 metres away and offers links to Rome\'s main attractions. Please note that children under 16 are not allowed in the gym.',
      ownerName: 'Lorenzo Perruzzi',
      ownerStars: 4.5,
      ownerReviews: 2780,
      ownerAssetSrc: '',
      services: {
        '2 Bed' : Icons.bed,
        'Dinner' : Icons.dinner_dining,
        'Hot Tub' : Icons.shower,
        '1 AC' : Icons.air_outlined,
      },
    ),

    Hotel(
      name: 'Holiday Inn Antalya',
      location: 'Turkey',
      assetSrc: 'assets/images/hotel-4.jpg',
      price: 250,
      stars: 4.5,
      reviews: 1321,
      description: 'Situated in the Eski Lara district in Antalya, 500 m from the public beach area where you have free access, Holiday Inn Antalya - Lara features an outdoor pool, sun terrace and views of the sea. Hotel\'s unique open lobby concept offers a flexible area where you can relax or enjoy your meals anytime. You will find an on-site Starbucks café as well. Certain units feature a seating area to relax in after a busy day. A terrace or balcony are featured in certain rooms. A flat-screen TV is featured. Free WiFi is available throughout the property and free private parking is available on site. You will find a 24-hour front desk at the property. The hotel also offers car hire. Several dental and hair transplant clinics can be found in the area. Broken Minaret and Hadrian Gate are 9 km from Holiday Inn Antalya - Lara, while Clock Tower is 9 km away. Terracity Shopping Center is just 5 km from the hotel. ANFAS Convention Center is 11 km from Holiday Inn Antalya - Lara. Antalya Airport is 7 km from the property.',
      ownerName: 'Selim Balik',
      ownerStars: 4.5,
      ownerReviews: 576,
      ownerAssetSrc: '',
      saleBannerText: '25% OFF',
      services: {
        '2 Bed' : Icons.bed,
        'Dinner' : Icons.dinner_dining,
        'Hot Tub' : Icons.shower,
        '1 AC' : Icons.air_outlined,
      },
    ),



  ];

}