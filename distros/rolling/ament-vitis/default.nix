
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-acceleration, ament-cmake-core, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-rolling-ament-vitis";
  version = "0.10.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_vitis-release/archive/release/rolling/ament_vitis/0.10.1-5.tar.gz";
    name = "0.10.1-5.tar.gz";
    sha256 = "1e3afb1ff96db2d9b347a1a71ea47c9ad65015b61a3b2843da9327a7399ea53f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-acceleration ament-cmake-core ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake macros and utilities to include Vitis platform into the ROS 2 build system (ament) and its development flows.";
    license = with lib.licenses; [ asl20 ];
  };
}
