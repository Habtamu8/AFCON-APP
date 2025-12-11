import 'package:flutter/material.dart';

class RealEstateHomePage extends StatelessWidget {
  final List<Map<String, String>> properties = [
    {
      "title": "Modern Apartment",
      "location": "New York",
      "price": "\$250,000",
      "image": "https://picsum.photos/400/300?1"
    },
    {
      "title": "Luxury Villa",
      "location": "Los Angeles",
      "price": "\$780,000",
      "image": "https://picsum.photos/400/300?2"
    },
    {
      "title": "Cozy House",
      "location": "Chicago",
      "price": "\$340,000",
      "image": "https://picsum.photos/400/300?3"
    },
    {
      "title": "Beachfront Condo",
      "location": "Miami",
      "price": "\$510,000",
      "image": "https://picsum.photos/400/300?4"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // 🔹 Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      body: CustomScrollView(
        slivers: [

          // 🔹 Search AppBar
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 1,
            title: _buildSearchBar(),
          ),

          // 🔹 Grid of Property Cards
          SliverPadding(
            padding: EdgeInsets.all(12),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,        // 🔥 Two cards per row
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                childAspectRatio: 0.72,   // 🔥 Controls height of cards
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final property = properties[index];
                  return _buildPropertyCard(context, property);
                },
                childCount: properties.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Search bar widget
  Widget _buildSearchBar() {
    return Container(
      height: 42,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search properties...",
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  // 🔹 Property Card Widget
  Widget _buildPropertyCard(BuildContext context, Map<String, String> data) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to property detail
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              color: Colors.black12,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            // 🔹 Image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(
                data["image"]!,
                height: 130,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            // 🔹 Card Content
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data["title"]!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 4),

                  Row(
                    children: [
                      Icon(Icons.location_on, size: 14, color: Colors.grey),
                      SizedBox(width: 3),
                      Text(
                        data["location"]!,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),

                  Text(
                    data["price"]!,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
