import 'package:flutter/material.dart';
import 'package:salhurry/presentation/Search/widgets/search_button.dart';
import 'package:salhurry/utilities/constants/const.dart';

class SearchPage extends StatelessWidget {
  final List<String> recentSearches = [
    "part time jobs",
    "Delivery",
    "Data entry",
    'pkda'
  ];
  final List<Map<String, dynamic>> suggestions = [
    {
      'logo': Icons.bubble_chart, // Placeholder for the logo
      'company': 'Asana',
      'rating': 3.9,
      'reviews': 789,
      'tag': 'Foreign MNC',
      'tagColor': Colors.orange.shade100,
    },
    {
      'logo': Icons.bolt, // Placeholder for the logo
      'company': 'Framer',
      'rating': 4.9,
      'reviews': 1089,
      'tag': 'Indian MNC',
      'tagColor': Colors.orange.shade100,
    },
    {
      'logo': Icons.bolt, // Placeholder for the logo
      'company': 'Framer',
      'rating': 4.9,
      'reviews': 1089,
      'tag': 'Indian MNC',
      'tagColor': Colors.orange.shade100,
    },
    {
      'logo': Icons.bolt, // Placeholder for the logo
      'company': 'Framer',
      'rating': 4.9,
      'reviews': 1089,
      'tag': 'Indian MNC',
      'tagColor': Colors.orange.shade100,
    }
  ];
  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            // handle back action
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 246, 246),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              khbox20,

              // Recent Searches
              Text(
                'recent searches',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: recentSearches.map((search) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(
                          5), // Same as the Chip corner radius
                    ),
                    child: Text(
                      search,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 14, 13, 126),
                      ),
                    ),
                  );
                }).toList(),
              ),
              khbox30,
              // Related keywords input
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Related keywords',
                  border: UnderlineInputBorder(),
                ),
              ),
              khbox20,
              // Location input
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Location',
                  border: UnderlineInputBorder(),
                ),
              ),
              khbox30,
              // Search button
              const WidgetSearchJobsButton(),
              khbox10,

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Top destinations",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    //Top destinations listview

                    khbox10,
                    SizedBox(
                      height: 250,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        // scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 16),
                        itemCount: suggestions.length,
                        itemBuilder: (context, index) {
                          final suggestion = suggestions[index];
                          return CompanyCard(
                            logo: suggestion['logo'],
                            company: suggestion['company'],
                            rating: suggestion['rating'],
                            reviews: suggestion['reviews'],
                            tag: suggestion['tag'],
                            tagColor: suggestion['tagColor'],
                          );
                        },
                      ),
                    ),
                    khbox20,
                    const Divider(
                      thickness: 5,
                      color: Color.fromARGB(255, 244, 244, 244),
                    ),
                    khbox20,
                    //more suggestions listview
                    const Text(
                      "More suggestions",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    khbox10,
                    SizedBox(
                      height: 250,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        // scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 16),
                        itemCount: suggestions.length,
                        itemBuilder: (context, index) {
                          final suggestion = suggestions[index];
                          return CompanyCard(
                            logo: suggestion['logo'],
                            company: suggestion['company'],
                            rating: suggestion['rating'],
                            reviews: suggestion['reviews'],
                            tag: suggestion['tag'],
                            tagColor: suggestion['tagColor'],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CompanyCard extends StatelessWidget {
  final IconData logo;
  final String company;
  final double rating;
  final int reviews;
  final String tag;
  final Color tagColor;

  const CompanyCard({
    super.key,
    required this.logo,
    required this.company,
    required this.rating,
    required this.reviews,
    required this.tag,
    required this.tagColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          khbox20,
          khbox10,
          // Company Logo (placeholder)
          Container(
            width: 100,
            // height: 50,
            color: Colors.black12,
            child: Icon(logo, size: 40, color: Colors.black),
          ),

          khbox10,
          // Company Name
          Text(
            company,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),

          // Rating and Reviews
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 18),
              const SizedBox(width: 4),
              Text(
                '$rating | $reviews reviews',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ],
          ),
          khbox15,
          // Tag
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: tagColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              tag,
              style: TextStyle(
                color: Colors.orange.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
