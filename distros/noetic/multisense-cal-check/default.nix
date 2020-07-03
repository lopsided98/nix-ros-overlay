
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-ros }:
buildRosPackage {
  pname = "ros-noetic-multisense-cal-check";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense_cal_check/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "2453f97eabe3be6502dc7a6ffc1db33f7747081e76d6f468e4098fac499af90c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_cal_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
