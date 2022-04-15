
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-common-bringup, irobot-create-description, irobot-create-ignition-bringup, irobot-create-ignition-plugins, irobot-create-ignition-toolbox, irobot-create-nodes }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-ignition-sim";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_ignition_sim/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d1c568dacdb8de4e04b2901a5950715fcdad463ad868ac63000ed9bbd49cb1e0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ irobot-create-common-bringup irobot-create-description irobot-create-ignition-bringup irobot-create-ignition-plugins irobot-create-ignition-toolbox irobot-create-nodes ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for the iRobot(R) Create(R) 3 robot Ignition simulator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
