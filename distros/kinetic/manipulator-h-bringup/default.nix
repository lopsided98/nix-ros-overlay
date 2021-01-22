
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h-bringup";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_bringup/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "24592685980ded6ae9fe3fe6454c00a858d2ab78a1dee626553239ac421e8bc8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The manipulator_h_bringup package
    This package includes launch file to describe robotis in Rviz.'';
    license = with lib.licenses; [ asl20 ];
  };
}
