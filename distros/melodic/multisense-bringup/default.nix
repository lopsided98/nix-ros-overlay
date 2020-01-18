
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-description, multisense-ros }:
buildRosPackage {
  pname = "ros-melodic-multisense-bringup";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_bringup/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "dfc42cdd4c8379779a33bde222875401e436c20cd64ca22478f15305a4eac570";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-description multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
