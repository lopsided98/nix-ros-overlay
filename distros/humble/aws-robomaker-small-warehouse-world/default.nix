
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-humble-aws-robomaker-small-warehouse-world";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_robomaker_small_warehouse_world-release/archive/release/humble/aws_robomaker_small_warehouse_world/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "65dfe041bacd9e53224fef4ea1c98b594c9d6e78e2c88e018b5fca1982292de1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AWS RoboMaker package for a warehouse world to use in manufacturing and logistics robot applications.'';
    license = with lib.licenses; [ "MIT-0" ];
  };
}
