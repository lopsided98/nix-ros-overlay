
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-catch2";
  version = "1.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/lyrical/ament_cmake_catch2/1.5.0-3.tar.gz";
    name = "1.5.0-3.tar.gz";
    sha256 = "952e260daa1c403bd7f626b7bdaf3c87e4797e13ddaaf16c14f3e978997d46c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "Allows integrating catch2 tests in the ament buildsystem with CMake";
    license = with lib.licenses; [ asl20 ];
  };
}
