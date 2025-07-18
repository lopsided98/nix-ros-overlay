
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-acceleration, ament-cmake-core, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-kilted-ament-vitis";
  version = "0.10.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_vitis-release/archive/release/kilted/ament_vitis/0.10.1-5.tar.gz";
    name = "0.10.1-5.tar.gz";
    sha256 = "c887a1fee2549a9a5432de56cb623abc88d94b46dccb82201d8d239d18860cd0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-acceleration ament-cmake-core ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake macros and utilities to include Vitis platform into the ROS 2 build system (ament) and its development flows.";
    license = with lib.licenses; [ asl20 ];
  };
}
