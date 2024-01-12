
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-acceleration, ament-cmake-core, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-iron-ament-vitis";
  version = "0.10.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_vitis-release/archive/release/iron/ament_vitis/0.10.1-4.tar.gz";
    name = "0.10.1-4.tar.gz";
    sha256 = "16a9a8f67c95b8dc7649e60af7f8c4bdff76dad75ca371d3b8c3b142aeadb96c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-acceleration ament-cmake-core ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''CMake macros and utilities to include Vitis platform into the ROS 2 build system (ament) and its development flows.'';
    license = with lib.licenses; [ asl20 ];
  };
}
