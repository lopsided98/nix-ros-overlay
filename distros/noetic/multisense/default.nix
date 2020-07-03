
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-bringup, multisense-cal-check, multisense-description, multisense-lib, multisense-ros }:
buildRosPackage {
  pname = "ros-noetic-multisense";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "79167530741ace5d77646e29f2931a339d4b0a6568afba457b38c778e7a890a0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-bringup multisense-cal-check multisense-description multisense-lib multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense catkin driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
