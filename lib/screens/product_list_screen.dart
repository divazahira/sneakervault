import 'package:flutter/material.dart';
import '../models/shoe_model.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final String categoryName;

  const ProductListScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    final filteredShoes = categoryName == 'Semua'
        ? dummyShoes
        : dummyShoes.where((s) => s.category.toLowerCase() == categoryName.toLowerCase()).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori: $categoryName'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: filteredShoes.isEmpty
          ? const Center(child: Text('Tidak ada produk untuk kategori ini.'))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: filteredShoes.length,
              itemBuilder: (context, index) {
                final shoe = filteredShoes[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(shoe.imageUrl, width: 70, height: 70, fit: BoxFit.cover),
                    ),
                    title: Text(shoe.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${shoe.brand} • ${shoe.category}'),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 16),
                            Text(' ${shoe.rating}', style: const TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                    trailing: Text(
                      'Rp ${(shoe.price / 1000).toStringAsFixed(0)}rb',
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductDetailScreen(shoe: shoe)),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}