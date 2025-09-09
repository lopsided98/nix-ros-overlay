
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-catch2";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/kilted/ament_cmake_catch2/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "28d228e320767db57ecb7e6c506e6022cd048df8200fa45a0c1a2dcf1049990c";
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
