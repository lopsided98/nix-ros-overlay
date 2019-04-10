
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-multisense-description";
  version = "4.0.2-r1";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/lunar/multisense_description/4.0.2-1.tar.gz;
    sha256 = "0b6d76c1f0af9bfe24e16d68b0eb49d827f3bb4fde406cecf28311cd07d51e7c";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_description'';
    #license = lib.licenses.BSD;
  };
}
