
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-catch2";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/jazzy/ament_cmake_catch2/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "f49dc20303ecb6b5cf34cb4ee0535ff86a16cefe4f2b0dd8003ce84c09155f20";
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
