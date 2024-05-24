
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-acceleration, ament-cmake-core, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-jazzy-ament-vitis";
  version = "0.10.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_vitis-release/archive/release/jazzy/ament_vitis/0.10.1-5.tar.gz";
    name = "0.10.1-5.tar.gz";
    sha256 = "2cb6f87180b088ef55a5d3cd5d89b390cbcfaac8b9c40689beb96852a61b2a7a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-acceleration ament-cmake-core ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake macros and utilities to include Vitis platform into the ROS 2 build system (ament) and its development flows.";
    license = with lib.licenses; [ asl20 ];
  };
}
