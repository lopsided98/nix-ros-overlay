
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-galactic-aws-robomaker-small-warehouse-world";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_small_warehouse_world-release/archive/release/galactic/aws_robomaker_small_warehouse_world/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "846ceec0b2874b4a3af5df80f660ae65dc4d8e1fc13e2d6ea8dd9d62a437ca4d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AWS RoboMaker package for a warehouse world to use in manufacturing and logistics robot applications.'';
    license = with lib.licenses; [ mit ];
  };
}
