
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench-toolbox";
  version = "2.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/dynamixel_workbench_toolbox/2.2.0-0.tar.gz";
    name = "2.2.0-0.tar.gz";
    sha256 = "53f4f6fd40d99a4559a67bacfc26e637d546ad455128380596ef8464ba639c70";
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
