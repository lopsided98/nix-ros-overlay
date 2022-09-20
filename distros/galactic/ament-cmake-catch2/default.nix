
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-galactic-ament-cmake-catch2";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/galactic/ament_cmake_catch2/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "2bce1d5be97df2de18f0cd339e154a374f3e813c3fa94bb4aa15da0441bfc7c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''Allows integrating catch2 tests in the ament buildsystem with CMake'';
    license = with lib.licenses; [ asl20 ];
  };
}
