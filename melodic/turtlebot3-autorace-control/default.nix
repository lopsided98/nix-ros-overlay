
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, nav-msgs, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-autorace-control";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/melodic/turtlebot3_autorace_control/1.2.0-0.tar.gz;
    sha256 = "b56c3c0c52ea3cffbbca2e86a6236f6a8a0520edc2c8178682c1e0dda35dfd94";
  };

  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.enum34 sensor-msgs nav-msgs rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that controls TurtleBot3 Auto'';
    license = with lib.licenses; [ asl20 ];
  };
}
