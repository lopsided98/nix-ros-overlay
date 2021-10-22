
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-foxy-aws-robomaker-small-warehouse-world";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_small_warehouse_world-release/archive/release/foxy/aws_robomaker_small_warehouse_world/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "186aeccb81a6a5d0cf66bc81d17d679ce8d5c249325dc52abfd61bc1ed262683";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AWS RoboMaker package for a warehouse world to use in manufacturing and logistics robot applications.'';
    license = with lib.licenses; [ mit ];
  };
}
