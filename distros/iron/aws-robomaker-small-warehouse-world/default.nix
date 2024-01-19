
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-iron-aws-robomaker-small-warehouse-world";
  version = "1.0.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_robomaker_small_warehouse_world-release/archive/release/iron/aws_robomaker_small_warehouse_world/1.0.5-4.tar.gz";
    name = "1.0.5-4.tar.gz";
    sha256 = "5900147a8982798d025f048d395fbf0934c67afa1c9e371b9481904fdd23ed23";
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
