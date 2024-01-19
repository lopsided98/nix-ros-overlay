
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-description, create-driver, joy, joy-teleop }:
buildRosPackage {
  pname = "ros-noetic-create-bringup";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autonomylab/create_autonomy-release/archive/release/noetic/create_bringup/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "9bb806ce14ca04be5d3ff97613009bd9645f950f7b89be34a047b18b7e937f29";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ create-description create-driver joy joy-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for common accessories when working with Create/Roomba platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
