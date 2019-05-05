
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-ros }:
buildRosPackage {
  pname = "ros-lunar-multisense-cal-check";
  version = "4.0.2-r1";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/lunar/multisense_cal_check/4.0.2-1.tar.gz;
    sha256 = "859f17aada8c6dc54cc79439ce4be7c3ac820c5127eb1960ec0a170377e89396";
  };

  buildInputs = [ multisense-ros ];
  propagatedBuildInputs = [ multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_cal_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
