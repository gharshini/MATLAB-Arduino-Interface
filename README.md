# MATLAB-Arduino-Interface

Steps:
1. Extract the file from the zip folder that I have submitted.
2. Open main.m file and run it.
3. It opens a GUI.
4. Connect Arduino board that contains potentiometer and all necessary connections to the system
5. It contains a push button 'Connect to Arduino'. Press it. 
   In the command window it displays that Arduino is successfully connected.
6. I assigned my COM port as COM4. If there is any changes in the serial communication, 
   you have to change its port in the program.
7. Now press 'Puma560' push button. It displays puma560 arm.
8. The sliders below puma560 push button can be used to move the joints of the arm.
9. Now press the push buttons 'x' 'y' 'z' and simultaneously rotate potentiometer in order to 
   change the joint angles of the arm with the end effector position(ikine).
10.If you are not connecting the arduino you can manually enter x y z positions in the edit boxes 
   beside the x y z push buttons
11.Push the button 'Load Image'. It asks you to browse the images. You can browse any image from your PC or 
   the images that I have submitted in the folder.
12.The slider below that allows you to change the brightness of the image directly.
13.Push brightness button in order to change the brightness through potentiometer of the Arduino board.

Youtube link:
https://youtu.be/mXOpJT9hbJo
