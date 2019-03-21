
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, multisense-description, multisense-ros, catkin }:
buildRosPackage {
  pname = "ros-kinetic-multisense-bringup";
  version = "4.0.0";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_bringup/4.0.0-0.tar.gz;
    sha256 = "8f0fae550f766fe3a38e5acf3e2041322daab141d4b9b663b64bf47a4c02ff85";
  };

  propagatedBuildInputs = [ multisense-description multisense-ros ];
  nativeBuildInputs = [ multisense-description multisense-ros catkin ];

  meta = {
    description = ''multisense_bringup'';
    #license = lib.licenses.BSD;
  };
}
