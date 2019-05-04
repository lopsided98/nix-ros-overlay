
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, roslint, sensor-msgs, catkin, pythonPackages, cwiid, roscpp, rospy, std-msgs, genmsg, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-wiimote";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/wiimote/1.12.0-0.tar.gz;
    sha256 = "209bb773ad055bbee00dd4c1678dcfe3f805b304e31f94d8b6e962d5036e65ec";
  };

  buildInputs = [ std-srvs pythonPackages.numpy roslint sensor-msgs cwiid roslib rospy std-msgs genmsg roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs pythonPackages.numpy sensor-msgs cwiid roslib rospy std-msgs genmsg roscpp geometry-msgs ];
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
