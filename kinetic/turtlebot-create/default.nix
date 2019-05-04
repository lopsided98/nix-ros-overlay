
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, create-driver, create-node, catkin, create-description }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-create";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_create-release/archive/release/kinetic/turtlebot_create/2.3.1-0.tar.gz;
    sha256 = "5de6720c110be9b0f441d36039c111fe86fe7b4b77e51d7d0c91df67bb23c342";
  };

  propagatedBuildInputs = [ create-driver create-node create-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin metapackage for the turtlebot_create stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
