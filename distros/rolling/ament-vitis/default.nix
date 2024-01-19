
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-acceleration, ament-cmake-core, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-rolling-ament-vitis";
  version = "0.10.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_vitis-release/archive/release/rolling/ament_vitis/0.10.1-3.tar.gz";
    name = "0.10.1-3.tar.gz";
    sha256 = "39c30afce58c705c2c108b61321a5cceb01d35dbd9f5128792e00f2d94869417";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-acceleration ament-cmake-core ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''CMake macros and utilities to include Vitis platform into the ROS 2 build system (ament) and its development flows.'';
    license = with lib.licenses; [ asl20 ];
  };
}
