
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-multisense-description";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense_description/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "ccb4694552f4a0e3798a127357f42357415abcce5c6d3e18dde20cb494f9f7c6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
