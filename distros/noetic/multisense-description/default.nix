
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-multisense-description";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense_description/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "c5c2419300c50756d53f0e203013bb45bbc09fbb13942099e3668a1649fbde71";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
