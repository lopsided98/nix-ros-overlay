
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-auto";
  version = "1.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_auto/1.3.7-1.tar.gz";
    name = "1.3.7-1.tar.gz";
    sha256 = "b26d2e35cc22ec96800b27e047c9ba27fd236b619c0fb5d15213cb921d91aefc";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
