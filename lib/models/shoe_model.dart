class Shoe {
  final String id;
  final String name;
  final String brand;
  final double price;
  final String category;
  final double rating;
  final String imageUrl;
  final String description;
  final List<int> sizes;

  Shoe({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.category,
    required this.rating,
    required this.imageUrl,
    required this.description,
    required this.sizes,
  });

  factory Shoe.fromJson(Map<String, dynamic> json) {
    return Shoe(
      id: json['id'],
      name: json['name'],
      brand: json['brand'],
      price: (json['price'] as num).toDouble(),
      category: json['category'],
      rating: (json['rating'] as num).toDouble(),
      imageUrl: json['imageUrl'],
      description: json['description'],
      sizes: List<int>.from(json['sizes']),
    );
  }
}

// Data Dummy Lokal
final List<Shoe> dummyShoes = [
  Shoe(
    id: 's1',
    name: 'Air Max Pulse',
    brand: 'Nike',
    price: 2199000,
    category: 'Running',
    rating: 4.8,
    imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
    description: 'Sepatu lari dengan bantalan udara maksimal untuk kenyamanan sepanjang hari.',
    sizes: [39, 40, 41, 42, 43],
  ),
  Shoe(
    id: 's2',
    name: 'Ultraboost Light',
    brand: 'Adidas',
    price: 2800000,
    category: 'Running',
    rating: 4.9,
    imageUrl: 'https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2',
    description: 'Bahan rajut yang responsif dan sangat ringan untuk olahraga harian.',
    sizes: [40, 41, 42, 44],
  ),
  Shoe(
    id: 's3',
    name: 'RS-X Efekt',
    brand: 'Puma',
    price: 1799000,
    category: 'Casual',
    rating: 4.6,
    imageUrl: 'https://images.unsplash.com/photo-1608231387042-66d1773070a5',
    description: 'Desain futuristik dengan perpaduan warna bold untuk tampilan streetwear.',
    sizes: [38, 39, 40, 41, 42],
  ),
  Shoe(
    id: 's4',
    name: 'Old Skool Classic',
    brand: 'Vans',
    price: 999000,
    category: 'Skate',
    rating: 4.7,
    imageUrl: 'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77',
    description: 'Ikon skateboard klasik dengan garis samping khas Vans.',
    sizes: [39, 40, 41, 42, 43, 44],
  ),
];