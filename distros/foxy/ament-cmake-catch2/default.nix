
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-catch2";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/foxy/ament_cmake_catch2/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4c435817be2c972b6f062c6dc0cb0bbaeca09abb8c6cd37b185d9153df544e74";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''Allows integrating catch2 tests in the ament buildsystem with CMake'';
    license = with lib.licenses; [ asl20 ];
  };
}
