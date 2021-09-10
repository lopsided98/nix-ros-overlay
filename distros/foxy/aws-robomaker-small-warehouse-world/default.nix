
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-foxy-aws-robomaker-small-warehouse-world";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_small_warehouse_world-release/archive/release/foxy/aws_robomaker_small_warehouse_world/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "26033a906fb2648570cc63ae226c4f1dcc22385737d110204f72cac118ed9bea";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AWS RoboMaker package for a warehouse world to use in manufacturing and logistics robot applications.'';
    license = with lib.licenses; [ mit ];
  };
}
