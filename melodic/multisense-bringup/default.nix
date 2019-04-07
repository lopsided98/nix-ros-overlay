
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, multisense-description, multisense-ros, catkin }:
buildRosPackage {
  pname = "ros-melodic-multisense-bringup";
  version = "4.0.2";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_bringup/4.0.2-0.tar.gz;
    sha256 = "82520ea279a265a4015699da6af28432d11f37ea05b9c742774c83a989fa1294";
  };

  buildInputs = [ multisense-description multisense-ros ];
  propagatedBuildInputs = [ multisense-description multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_bringup'';
    #license = lib.licenses.BSD;
  };
}
