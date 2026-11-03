
import 'package:flutter/material.dart';

class AnnonceCard extends StatelessWidget {
  final String titre;
  final String description;
  final String categorie;
  final String statut;

  const AnnonceCard({
    super.key,
    required this.titre,
    required this.description,
    required this.categorie,
    required this.statut,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.inventory_2, size: 40, color: Colors.teal),
          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titre,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 5),
                Text(description),
                SizedBox(height: 8),
                Text(statut, style: TextStyle(color: Colors.green)),
              ],
            ),
          ),

          Stack(
            clipBehavior: Clip.none,
            children: [
              Text(categorie),
              Positioned(
                top: -5,
                right: -8,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
