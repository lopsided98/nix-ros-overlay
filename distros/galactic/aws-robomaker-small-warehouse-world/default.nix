
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-galactic-aws-robomaker-small-warehouse-world";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_small_warehouse_world-release/archive/release/galactic/aws_robomaker_small_warehouse_world/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "bfbbf19db7b6fd655367553e8585662648a333bb29d2c30eed97aacd10b25418";
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
