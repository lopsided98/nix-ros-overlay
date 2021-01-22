
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-description, multisense-ros }:
buildRosPackage {
  pname = "ros-kinetic-multisense-bringup";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_bringup/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "1db805a192df284554dc84a66ecb41d73acfd64c2ab85987a2f6285d2e08d129";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-description multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
