
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, multisense-bringup, multisense-description, catkin, multisense-ros, multisense-lib, multisense-cal-check }:
buildRosPackage {
  pname = "ros-kinetic-multisense";
  version = "4.0.0";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense/4.0.0-0.tar.gz";
    name = "4.0.0-0.tar.gz";
    sha256 = "e8cc9b3db8a6ee0fccbf2f38d9e3b2cf40236bc8ad05c73c9469ef4228bd13ac";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-bringup multisense-description multisense-ros multisense-lib multisense-cal-check ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense catkin driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
