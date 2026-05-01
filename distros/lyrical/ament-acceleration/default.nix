
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-lyrical-ament-acceleration";
  version = "0.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_acceleration-release/archive/release/lyrical/ament_acceleration/0.2.0-6.tar.gz";
    name = "0.2.0-6.tar.gz";
    sha256 = "2250690bb30a86e91f5eddf8dc28155089b59fa4288757b817eaa233405ce38d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake macros and utilities to include hardware acceleration into the ROS 2 build system (ament) and its development flows.";
    license = with lib.licenses; [ asl20 ];
  };
}
