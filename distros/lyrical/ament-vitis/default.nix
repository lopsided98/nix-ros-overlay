
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-acceleration, ament-cmake-core, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-lyrical-ament-vitis";
  version = "0.10.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_vitis-release/archive/release/lyrical/ament_vitis/0.10.1-6.tar.gz";
    name = "0.10.1-6.tar.gz";
    sha256 = "aa37fe25270e327cf783ac63c9122c7acbfb952685d6414aeb78e5df25ff32da";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-acceleration ament-cmake-core ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake macros and utilities to include Vitis platform into the ROS 2 build system (ament) and its development flows.";
    license = with lib.licenses; [ asl20 ];
  };
}
