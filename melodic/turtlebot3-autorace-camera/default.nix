
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, cv-bridge, catkin, pythonPackages, dynamic-reconfigure, rospy }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-autorace-camera";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/melodic/turtlebot3_autorace_camera/1.2.0-0.tar.gz;
    sha256 = "fe6adfc679b7e08c054367e89c6a94da5cbecbd7f51411298fd4d795c61138de";
  };

  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.numpy rospy dynamic-reconfigure cv-bridge sensor-msgs pythonPackages.opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that controls Raspberry Pi Camera, and process the image'';
    #license = lib.licenses.Apache 2.0;
  };
}
