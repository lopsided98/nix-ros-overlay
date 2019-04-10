
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, multisense-description, multisense-ros, catkin }:
buildRosPackage {
  pname = "ros-lunar-multisense-bringup";
  version = "4.0.2-r1";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/lunar/multisense_bringup/4.0.2-1.tar.gz;
    sha256 = "228d99532af073c7e3c467718c8ac1f71488741c31f4a0eef1530795a5bb8d43";
  };

  buildInputs = [ multisense-description multisense-ros ];
  propagatedBuildInputs = [ multisense-description multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_bringup'';
    #license = lib.licenses.BSD;
  };
}
