import 'package:flutter/material.dart';
import 'edit_profile.dart'; // Import the EditProfilePage

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stacked Images
            Column(
              
              children: [
            // Background with Avatar
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none, // Allows overflow
              children: [
                // Background Image
                Container(
                  height: 300, // Adjust height as needed
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/various-medical-equipments-blue-backdrop 1.png"), // Replace with your background image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Circular Profile Image
                const Positioned(
                  bottom: -80, // Moves the avatar to overlap
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage("assets/images/doctor 1.png"), // Replace with your doctor image
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60), // Space below avatar


              /*  Image.asset(
                  'assets/images/various-medical-equipments-blue-backdrop 1.png', 
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              
              ClipOval(
            child: Image.asset(
              'assets/images/doctor 1.png', // First image
              width: 150, // Set equal width and height for a perfect circle
              height: 150,
              fit: BoxFit.cover, // Ensures the image covers the circular area
            ),
          ),
                SizedBox(height: 10),*/
              ],
            ),
            //SizedBox(height: 20),

            // User Details in Form Style
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Name Field
                    TextFormField(
                initialValue: 'Magdy Yaqoub',
                readOnly: true, // Make the field read-only
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person), 
                ),
              ),
              const SizedBox(height: 20),

              // Email Field with Email Icon
              TextFormField(
                initialValue: 'MagdyYaqoub@gmail.com',
                readOnly: true, // Make the field read-only
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email), 
                ),
              ),
              const SizedBox(height: 20),

              // Password Field with Lock Icon (after text)
              TextFormField(
                initialValue: '************',
                readOnly: true, // Make the field read-only
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off), 
                ),
              ),
              const SizedBox(height: 20),

              
              TextFormField(
                initialValue: 'Cardiologia',
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Specialty',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.medical_services), 
                ),
              ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Edit Profile Button
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
        onPressed: () {
      
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EditProfilePage()),
      );
    },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: Colors.blue, // Button color
      foregroundColor: Colors.white, // Text color set to white
    ),
    child: const Text(
      'Edit Profile',
      style: TextStyle(
        color: Colors.white, // Ensuring text is white
        fontSize: 18, // Adjust font size if needed
        fontWeight: FontWeight.bold, // Make it stand out
      ),
    ),
  ),
),          const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}