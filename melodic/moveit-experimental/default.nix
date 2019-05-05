
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-experimental";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_experimental/1.0.1-0.tar.gz;
    sha256 = "24c9391582b59fe7765fcbb716fd4156211e6b6fd28f873c4aef4619f3f5b6fa";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Experimental packages for MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
