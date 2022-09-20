
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-ros }:
buildRosPackage {
  pname = "ros-melodic-multisense-cal-check";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_cal_check/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "0723fc6f404b8f4a9c77ea7423a4ed157be19979ba334d03b96a1a4a1f531429";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_cal_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
