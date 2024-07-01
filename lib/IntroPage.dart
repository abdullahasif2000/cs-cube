import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('salim habib university'),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/salim-university-2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black54, // Semi-transparent black background
                borderRadius: BorderRadius.circular(10),
              ),
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection('teamMembers').snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    print('Firestore Error: ${snapshot.error}');
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    print('No team members found.');
                    return Center(child: Text('No team members found.'));
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Welcome to CS CUBE',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Team Members:',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            var member = snapshot.data!.docs[index];
                            return Card(
                              color: Colors.blueGrey[900], // Adjust color as needed
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              child: ListTile(
                                title: Text(
                                  member['name'],
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(
                                  member['designation'],
                                  style: TextStyle(color: Colors.white70),
                                ),
                                // Add more details as needed
                              ),
                            );
                          },
                        ),
                      ),
                      // SizedBox(height: 20),
                      // Text(
                      //   'Department Description...',
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //     fontSize: 18,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/events');
                        },
                        child: Text('View Events'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent, // Background color
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          textStyle: TextStyle(fontSize: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/addEvent');
                        },
                        child: Text('Add Event'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent, // Background color
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          textStyle: TextStyle(fontSize: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/addTeamMember');
                        },
                        child: Text('Add Team Member'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purpleAccent, // Background color
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          textStyle: TextStyle(fontSize: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}