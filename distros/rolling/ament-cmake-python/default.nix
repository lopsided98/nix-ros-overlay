
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-python";
  version = "2.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_python/2.3.2-3.tar.gz";
    name = "2.3.2-3.tar.gz";
    sha256 = "689e95fd9775f304f2d2e170da8a476da6198dde2f0142fb55c4d877ff87ae26";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to use Python in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
