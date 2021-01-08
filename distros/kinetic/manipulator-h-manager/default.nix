
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, manipulator-h-base-module, robotis-controller, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h-manager";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_manager/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "84335dac8bad900cac41ff0f4732e59e9042af83d4185d49a3b3225947a138cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ manipulator-h-base-module robotis-controller roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The manipulator_h_manager package
    This package describes robot manager to execute manipulator_h_base_module.'';
    license = with lib.licenses; [ asl20 ];
  };
}
