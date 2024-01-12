
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, roscpp }:
buildRosPackage {
  pname = "ros-noetic-dynamixel-workbench-toolbox";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/noetic/dynamixel_workbench_toolbox/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "2c3513d9e4e8d1ac52e5c230c63ef6661cc74c97bd0cc1f71281fa11d2f56777";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamixel-sdk roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is composed of 'dynamixel_item', 'dynamixel_tool', 'dynamixel_driver' and 'dynamixel_workbench' class.
    The 'dynamixel_item' is saved as control table item and information of Dynamixels.
    The 'dynamixel_tool' class loads its by model number of Dynamixels.
    The 'dynamixel_driver' class includes wraped function used in DYNAMIXEL SDK.
    The 'dynamixel_workbench' class make simple to use Dynamixels'';
    license = with lib.licenses; [ asl20 ];
  };
}
