
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-bringup, multisense-cal-check, multisense-description, multisense-lib, multisense-ros }:
buildRosPackage {
  pname = "ros-melodic-multisense";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "7f63ad1458aaa5d7d1c07490b256ae3417943013dd5948cf7ecbfbf6d798a179";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-bringup multisense-cal-check multisense-description multisense-lib multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense catkin driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
