
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-bringup, turtlebot3-description, turtlebot3-example, turtlebot3-navigation, turtlebot3-slam, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "e394c49a47c91bb821f4c037d47671e7150d6efc7e1eac31fa8688566abd56fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtlebot3-bringup turtlebot3-description turtlebot3-example turtlebot3-navigation turtlebot3-slam turtlebot3-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the Turtlebot3 (meta package)'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
