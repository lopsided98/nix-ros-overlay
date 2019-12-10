
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roscpp, turtlebot3-description, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-jderobot-assets";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/assets-release/archive/release/kinetic/jderobot_assets/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "259c30e26e4fadb66c7b8b9f6d9979bb1082c4f114a78c38217e4c7591dd8dd4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros roscpp turtlebot3-description turtlebot3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
