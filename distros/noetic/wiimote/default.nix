
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cwiid, geometry-msgs, message-generation, message-runtime, python3Packages, roscpp, roslib, roslint, rospy, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-wiimote";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/noetic/wiimote/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "957ffb8e043a21fd583e014a3178cc838297ecc58eec886fbf79dd1167670c05";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roslint ];
  propagatedBuildInputs = [ cwiid geometry-msgs message-runtime python3Packages.numpy roscpp roslib rospy sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wiimote package allows ROS nodes to communicate with a Nintendo Wiimote
    and its related peripherals, including the Nunchuk, Motion Plus, and
    (experimentally) the Classic. The package implements a ROS node that uses
    Bluetooth to communicate with the Wiimote device, obtaining accelerometer
    and gyro data, the state of LEDs, the IR camera, rumble (vibrator),
    buttons, joystick, and battery state. The node additionally enables ROS
    nodes to control the Wiimote's LEDs and vibration for feedback to the human
    Wiimote operator. LEDs and vibration may be switched on and off, or made to
    operate according to a timed pattern.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
