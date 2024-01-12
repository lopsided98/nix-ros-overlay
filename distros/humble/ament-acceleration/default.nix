
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-ament-acceleration";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_acceleration-release/archive/release/humble/ament_acceleration/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "3606c118c74ee5346e78a7889428d86e49a4644bbac8a586576c5966559cfa38";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''CMake macros and utilities to include hardware acceleration into the ROS 2 build system (ament) and its development flows.'';
    license = with lib.licenses; [ asl20 ];
  };
}
