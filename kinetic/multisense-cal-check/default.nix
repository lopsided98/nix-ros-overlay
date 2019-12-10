
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-ros }:
buildRosPackage {
  pname = "ros-kinetic-multisense-cal-check";
  version = "4.0.0";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_cal_check/4.0.0-0.tar.gz";
    name = "4.0.0-0.tar.gz";
    sha256 = "11831d5cdc2747573293a0125b43a8ced218975c56ef1e8506464816dc061ef7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_cal_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
