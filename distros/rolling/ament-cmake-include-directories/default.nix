
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-include-directories";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_include_directories/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "262652a4148861bdc14b3a96e406b50092f142f5c45e8f1693b22be7b45fadd7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to order include directories according to a chain of prefixes in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
