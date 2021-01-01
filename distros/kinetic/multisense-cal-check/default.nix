
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-ros }:
buildRosPackage {
  pname = "ros-kinetic-multisense-cal-check";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_cal_check/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "9e814efb425b2dbcb1784f2ecf1257a1d5c3c356888397ef85bea385252e21b8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_cal_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
