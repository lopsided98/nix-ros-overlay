
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, cv-bridge, catkin, pythonPackages, dynamic-reconfigure, rospy }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-autorace-camera";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/kinetic/turtlebot3_autorace_camera/1.2.0-0.tar.gz;
    sha256 = "3a6201e298ecc5c450ed0a77a6f2b161bf9bf4278470d60c119d785f316d6f18";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.numpy rospy dynamic-reconfigure cv-bridge sensor-msgs pythonPackages.opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that controls Raspberry Pi Camera, and process the image'';
    #license = lib.licenses.Apache 2.0;
  };
}
