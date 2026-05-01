
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk }:
buildRosPackage {
  pname = "ros-lyrical-dynamixel-workbench-toolbox";
  version = "2.2.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench-release/archive/release/lyrical/dynamixel_workbench_toolbox/2.2.5-3.tar.gz";
    name = "2.2.5-3.tar.gz";
    sha256 = "f6b8d6c633a367dc56f53fd43368ee590817a7f6a1942daa5ee11a81d17d1c78";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-sdk ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package is composed of 'dynamixel_item', 'dynamixel_tool', 'dynamixel_driver' and 'dynamixel_workbench' class.
    The 'dynamixel_item' is saved as control table item and information of DYNAMIXEL.
    The 'dynamixel_tool' class loads its by model number of DYNAMIXEL.
    The 'dynamixel_driver' class includes wraped function used in DYNAMIXEL SDK.
    The 'dynamixel_workbench' class make simple to use DYNAMIXEL.";
    license = with lib.licenses; [ asl20 ];
  };
}
