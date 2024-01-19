
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-rolling-aws-robomaker-small-warehouse-world";
  version = "1.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_robomaker_small_warehouse_world-release/archive/release/rolling/aws_robomaker_small_warehouse_world/1.0.5-3.tar.gz";
    name = "1.0.5-3.tar.gz";
    sha256 = "8144054df35ebfe8fb438c3a43737711dc2294e263f5fcaf382ec96985004b14";
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
