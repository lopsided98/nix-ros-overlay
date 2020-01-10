
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-description, multisense-ros }:
buildRosPackage {
  pname = "ros-kinetic-multisense-bringup";
  version = "4.0.0";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_bringup/4.0.0-0.tar.gz";
    name = "4.0.0-0.tar.gz";
    sha256 = "8f0fae550f766fe3a38e5acf3e2041322daab141d4b9b663b64bf47a4c02ff85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-description multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
