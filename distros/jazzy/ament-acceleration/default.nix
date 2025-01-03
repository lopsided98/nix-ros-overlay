
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ament-acceleration";
  version = "0.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_acceleration-release/archive/release/jazzy/ament_acceleration/0.2.0-5.tar.gz";
    name = "0.2.0-5.tar.gz";
    sha256 = "8fa8bc302ea383eaa2de20db117ef4911f550a525f6a50fc556800ebab359ef7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake macros and utilities to include hardware acceleration into the ROS 2 build system (ament) and its development flows.";
    license = with lib.licenses; [ asl20 ];
  };
}
