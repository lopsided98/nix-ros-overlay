
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roscpp, turtlebot3-description, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-melodic-jderobot-assets";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/assets-release/archive/release/melodic/jderobot_assets/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1f0ed0051b66a63e5c616eea7354f3416125112f28e008b874bd1f2a5e2cecdd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros roscpp turtlebot3-description turtlebot3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
