
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-catch2";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/jazzy/ament_cmake_catch2/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "322e0f847f8949ae77d7b1bfcd45d1b1deb56f163db078fa54be5438db7b6b76";
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
