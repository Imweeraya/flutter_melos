

import 'package:product/products/feature_home/domain/entities/product.dart';

final List<ProductDisplay> poppularProducts = [
  ProductDisplay(
      id: "clo-99",
      category: "clothe",
      name: "Plunging Halter",
      description: "xxx",
      imageUrl:
          "https://m.media-amazon.com/images/I/71SuKEeEHoL._AC_UL1500_.jpg",
      price: 399),
  ProductDisplay(
      id: "sho-02",
      category: "Shoes",
      name: "Nike 1 shadow",
      description: "xxx",
      imageUrl:
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      price: 2599),
  ProductDisplay(
      id: "clo-98",
      category: "clothe",
      name: " Winter Thicken ",
      description: "xxx",
      imageUrl:
          "https://m.media-amazon.com/images/I/81616S5tyfL._AC_SL1500_.jpg",
      price: 1599),
  ProductDisplay(
      id: "H-01",
      category: "Hat",
      name: "Bucket Hat",
      description: "xxx",
      imageUrl:
          "https://m.media-amazon.com/images/I/716OSSSEb4L._AC_UL1500_.jpg",
      price: 169),
];

final List<ProductDisplay> shoes = [
  ProductDisplay(
      id: "sho-01",
      category: "Shoes",
      name: "Nike Air Force",
      description: "xxx",
      imageUrl:
          "https://images.unsplash.com/photo-1600269452121-4f2416e55c28?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      price: 1399),
  ProductDisplay(
      id: "sho-02",
      category: "Shoes",
      name: "Nike 1 shadow",
      description: "xxx",
      imageUrl:
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      price: 2599),
  ProductDisplay(
      id: "sho-03",
      category: "Shoes",
      name: "promotional",
      description: "xxx",
      imageUrl:
          "https://images.unsplash.com/photo-1593081891731-fda0877988da?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      price: 1599),
  ProductDisplay(
      id: "sho-04",
      category: "Shoes",
      name: "Jordan 1 Retro",
      description: "xxx",
      imageUrl:
          "https://images.unsplash.com/photo-1695697104675-429f5fcdede6?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      price: 2799),
];

final List<ProductDisplay> clothes = [
  ProductDisplay(
      id: "clo-01",
      category: "clothe",
      name: "Pink dress",
      description: "Ruched Off Shoulder Dresses",
      imageUrl: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQzVOlVtUDBEkacbQMXLLjtG82b2zsyoYR04lUKS_1XSUiaqcn983O-XmmdVh_qo3BKxOVjhNuJ-muuC1AjUXYg05RBJ0aGXQDWbHw0_78l&usqp=CAE",
      price: 599),
  ProductDisplay(
      id: "clo-02",
      category: "clothe",
      name: "beach dress",
      description: "aaaa",
      imageUrl: "https://m.media-amazon.com/images/I/71rLqf31sHS._AC_SL1500_.jpg",
      price: 1299),
  ProductDisplay(
      id: "clo-03",
      category: "clothe",
      name: "Lolita",
      description: "aaaa",
      imageUrl: "https://images-cdn.ubuy.qa/654118fce7f2d3141d5d1fce-adove-kawaii-lolita-dress-for-women-long.jpg",
      price: 2599),
  ProductDisplay(
      id: "clo-03",
      category: "clothe",
      name: "gothic",
      description: "aaaa",
      imageUrl: "https://m.media-amazon.com/images/I/51duj+m+p1L._AC_SL1250_.jpg",
      price: 1999),

];

final Map<String,String> categoryImages = {
  "electronics": 'https://images.unsplash.com/photo-1544006658-89bde88e87c6?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "jewelery":'https://plus.unsplash.com/premium_photo-1661645473770-90d750452fa0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "men's clothing":'https://images.unsplash.com/photo-1507680434567-5739c80be1ac?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "women's clothing": 'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=2448&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
};

