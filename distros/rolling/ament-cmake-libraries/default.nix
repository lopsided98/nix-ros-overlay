
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-libraries";
  version = "2.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_libraries/2.8.2-1.tar.gz";
    name = "2.8.2-1.tar.gz";
    sha256 = "f3026562295c745d44156be60b16a6743e64eb0da411a7d0f2a14c3ba1e0fccb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to deduplicate libraries in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
