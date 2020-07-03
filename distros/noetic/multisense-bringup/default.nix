
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-description, multisense-ros }:
buildRosPackage {
  pname = "ros-noetic-multisense-bringup";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense_bringup/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "3164d34e2f0a35abb23f3958764ef4c953730759f980700e126a01193820ab71";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-description multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
