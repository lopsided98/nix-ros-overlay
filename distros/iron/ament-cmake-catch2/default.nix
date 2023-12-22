
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-catch2";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/iron/ament_cmake_catch2/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "3dc5eb37e169ff79870af47b2a396c3e9cc8d83d51caea92505e6e8425648e98";
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
