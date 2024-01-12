
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-ament-acceleration";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_acceleration-release/archive/release/iron/ament_acceleration/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "efd07d6705438eb5a50cd2f41b3f9b3b3ce0ca6990bf35a5c82dcca03a59ad4f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''CMake macros and utilities to include hardware acceleration into the ROS 2 build system (ament) and its development flows.'';
    license = with lib.licenses; [ asl20 ];
  };
}
