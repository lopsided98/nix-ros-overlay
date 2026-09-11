
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-auto";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_auto/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "a5205c9fc01b47f0cb3e8cef1e8914208c6a8ddc1c483f9324453f45ce844b31";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];

  meta = {
    description = "The auto-magic functions for ease to use of the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
