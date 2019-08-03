
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot3-gazebo, catkin, turtlebot3-description }:
buildRosPackage {
  pname = "ros-kinetic-jderobot-assets";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/JdeRobot/assets-release/archive/release/kinetic/jderobot_assets/0.0.2-1.tar.gz;
    sha256 = "30ce184683a791181bbff6011d7afb6968adb331e30a9cbea2a0d1d8c372fe0a";
  };

  buildInputs = [ turtlebot3-gazebo turtlebot3-description ];
  propagatedBuildInputs = [ turtlebot3-gazebo turtlebot3-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
