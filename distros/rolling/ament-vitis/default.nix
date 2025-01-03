
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-acceleration, ament-cmake-core, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-rolling-ament-vitis";
  version = "0.10.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_vitis-release/archive/release/rolling/ament_vitis/0.10.1-4.tar.gz";
    name = "0.10.1-4.tar.gz";
    sha256 = "3f57ab28c9da76ecac8f6eaaff6aecef8a984d02c9061e12f11f3cc4ae3f4baa";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-acceleration ament-cmake-core ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake macros and utilities to include Vitis platform into the ROS 2 build system (ament) and its development flows.";
    license = with lib.licenses; [ asl20 ];
  };
}
