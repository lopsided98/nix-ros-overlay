
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-include-directories";
  version = "2.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_include_directories/2.8.3-1.tar.gz";
    name = "2.8.3-1.tar.gz";
    sha256 = "804d4c151a434e3152017b087da84b7a98521e4406a283ec979a0903efc4145c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to order include directories according to a chain of prefixes in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
