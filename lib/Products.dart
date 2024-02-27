import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String description;

  Product({required this.name, required this.imageUrl, required this.price, required this.description});
}

List<Product> products = [
  Product(name: "Монитор LG UltraFine 27UN880-B", imageUrl: 'assets/images/monitor.webp', price: 65000, description: 'Экран: 27 ", 3840x2160, 16:9, IPS, 60 Гц, 350 кд/м2, GTG 5 мс, AMD FreeSync'),
  Product(name: 'Телевизор LG 55UT640S', imageUrl: 'assets/images/televisor.jpg', price: 109000, description: 'Экран: 3840 x 2160, LED, 4K Ultra HD, 60 Гц'),
  Product(name: 'Пылесос LG VK69662N', imageUrl: 'assets/images/pilesos.jpg', price: 7900, description: 'Мощность: потребляемая 1600 Вт; всасывания 350 Вт'),
  Product(name: 'Стиральная машина LG F1296NDS0', imageUrl: 'assets/images/stiralka.jpg', price: 44000, description: 'Стирка: 6 кг, 1200 об/мин'),
  Product(name: 'Микроволновая печь LG MS2042DB', imageUrl: 'assets/images/mikro.jpg', price: 10000, description: 'Мощность микроволн: 700 Вт'),
  Product(name: 'Умная колонка LG WK7Y', imageUrl: 'assets/images/kolonka.jpg', price: 15000, description: 'Мощность: 30 Вт; Голосовой помощник: Алиса'),
  Product(name: 'Сплит-система LG B09TS', imageUrl: 'assets/images/kondey.webp', price: 63000, description: 'Производительность: охлаждения 3.46 кВт, обогрева 4.04 кВт'),
  Product(name: 'Музыкальный центр LG ON77DK', imageUrl: 'assets/images/))).jpg', price: 33500, description: 'Оптические диски: CD, CDRW, DVD, DVDRW'),
  Product(name: 'Саундбар LG SN4', imageUrl: 'assets/images/Soundbar.jpg', price: 23000, description: 'Выходная мощность: 300 Вт; Сабвуфер: 200 Вт; беспроводной,'),
  Product(name: 'Кофеварка Polaris PCM 1535E', imageUrl: 'assets/images/kofe.jpg', price: 15000, description: 'Функции: подача пара, подача горячей воды, настройка крепости кофе, самоочистка'),
  Product(name: 'Соковыжималка Polaris PEA 1535AL', imageUrl: 'assets/images/sok.webp', price: 8000, description: 'Защита: защита от перегрузки, автоматическая блокировка, плавный запуск двигателя'),
  Product(name: 'Миксер планетарный Hyundai HYM-S5461', imageUrl: 'assets/images/miks.jpg', price: 5500, description: 'Мощность: 1300 Вт; Чаша: 4.5 л, нержавеющая сталь'),
  Product(name: 'Робот-пылесос Xiaomi S10', imageUrl: 'assets/images/robot.jpg', price: 22000, description: 'Особенности: построение карты помещения; управление со смартфона; автоматический поиск ЗУ'),
  Product(name: 'Швейная машина Comfort 33', imageUrl: 'assets/images/mashina.jpg', price: 9000, description: 'Тип: электромеханическая; челнок: ротационный вертикальный'),
  Product(name: 'Утюг Polaris PIR 2821AK', imageUrl: 'assets/images/utyg.jpg', price: 4000, description: 'Подача пара: 50 г/мин, паровой удар: 200 г'),
];

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(product.name),
              content: Text(product.description),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Закрыть',
                  style: TextStyle(
                    color: Color.fromARGB(200,178,201,78),
                    fontSize: 15
                  )
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(
              product.imageUrl,
              height: 350,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(
              title: Text(product.name,
                style: TextStyle(
                    color: Color.fromARGB(200,178,201,78)
                )
              ),
              subtitle: Text('\₽${product.price.toStringAsFixed(2)}'),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Интернет-магазин'),
          backgroundColor: Color.fromARGB(200,178,201,78)),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}