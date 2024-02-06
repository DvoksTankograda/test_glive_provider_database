# test_glive_provider_database

Test task in which I fix the application and try to implement the database

## Getting Started

Develop the “GLive - Depth Maps” application on minimal settings: implement the display of a standard map and points on it, as well as implement the functions of adding/deleting and displaying points.

The application consists of three screens:

Login screen
Map screen
Screen with list of points

Login screen:
Fields for entering login and password and the “login” button. The application checks that root/root has been entered and takes you to the screen with the map. If it doesn’t match, it writes an error.

Map screen:
Map showing your current location and added points
There is a “add point” button on the screen: adds a point called “point N” at the point where the center of the screen is facing
There is a button on the map “open list of points”: opens a screen with a list of added points

Point list screen:
A list where each element has:
Point name
Coordinates
“Delete point” button
There is a “Back” button on the screen, which takes you to the map
