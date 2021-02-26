
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-eml";
  version = "1.8.15-r3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/eml-release/archive/release/noetic/eml/1.8.15-3.tar.gz";
    name = "1.8.15-3.tar.gz";
    sha256 = "8219ab24d7b0b32720cd1897a7ceaa28b4d912537986291cfa0c36b75b2ac5d0";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This is an implementation of the EtherCAT master protocol for the PR2
      robot based on the work done at Flanders' Mechatronics Technology Centre.'';
    license = with lib.licenses; [ "Binary Only" ];
  };
}
