
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-auto";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_auto/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "efee2f2aa67d6818f6907a340639e9fe7668411b4351bdcc52a19e6bef1b9331";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];

  meta = {
    description = "The auto-magic functions for ease to use of the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
