
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-aws-robomaker-simulation-ros-pkgs";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_robomaker_simulation_ros_pkgs-release/archive/release/dashing/aws_robomaker_simulation_ros_pkgs/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "d543709e2fbc1e36950267504bfab4cc88eac90db78627f592f8bada199d5379";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AWS RoboMaker package for accessing the simulation service.'';
    license = with lib.licenses; [ asl20 ];
  };
}
