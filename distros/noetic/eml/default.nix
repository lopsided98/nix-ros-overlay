
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-eml";
  version = "1.8.15-r7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/eml-release/archive/release/noetic/eml/1.8.15-7.tar.gz";
    name = "1.8.15-7.tar.gz";
    sha256 = "6144c6c41ee52929ac4063e0c79e33bae44f2ba3ea823299b8e383b0bc3b6f68";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This is an implementation of the EtherCAT master protocol for the PR2 robot based on the work done at Flanders' Mechatronics Technology Centre.'';
    license = with lib.licenses; [ "Binary-Only" ];
  };
}
