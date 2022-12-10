
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-rolling-aws-robomaker-small-warehouse-world";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_robomaker_small_warehouse_world-release/archive/release/rolling/aws_robomaker_small_warehouse_world/1.0.5-2.tar.gz";
    name = "1.0.5-2.tar.gz";
    sha256 = "f886ecab11d4e2a6721ea27ef96637c0e3eedd9fef6bda127f5e050b25b99b4d";
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
