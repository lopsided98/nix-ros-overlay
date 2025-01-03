
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-acceleration";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_acceleration-release/archive/release/rolling/ament_acceleration/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "80b921b08c2e1568da08ff348bd647d737e5d7f4db9820bd20953cb34d10c713";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake macros and utilities to include hardware acceleration into the ROS 2 build system (ament) and its development flows.";
    license = with lib.licenses; [ asl20 ];
  };
}
