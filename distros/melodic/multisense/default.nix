
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-bringup, multisense-cal-check, multisense-description, multisense-lib, multisense-ros }:
buildRosPackage {
  pname = "ros-melodic-multisense";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "1b947a09139d5a7d36abbf0fae0bf58cd911427da914f6e37277d08bd2d4b127";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ multisense-bringup multisense-cal-check multisense-description multisense-lib multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense catkin driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
