
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-acceleration, ament-cmake-core, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-rolling-ament-vitis";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_vitis-release/archive/release/rolling/ament_vitis/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "7e4531b4c8539b2dfefef2c072500cd3c33961152037eec0a89eb9a137fd3dfd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-acceleration ament-cmake-core ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''CMake macros and utilities to include Vitis platform into the ROS 2 build system (ament) and its development flows.'';
    license = with lib.licenses; [ asl20 ];
  };
}
