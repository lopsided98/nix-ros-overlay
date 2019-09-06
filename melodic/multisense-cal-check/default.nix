
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-ros }:
buildRosPackage {
  pname = "ros-melodic-multisense-cal-check";
  version = "4.0.2";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_cal_check/4.0.2-0.tar.gz";
    name = "4.0.2-0.tar.gz";
    sha256 = "465d464547103c39382ca3674e26c4babf375f44cc30f4c52b9e05c0f1c29532";
  };

  buildType = "catkin";
  buildInputs = [ multisense-ros ];
  propagatedBuildInputs = [ multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_cal_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
