
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pytest";
  version = "2.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_pytest/2.8.5-1.tar.gz";
    name = "2.8.5-1.tar.gz";
    sha256 = "24f06801f590a7c27f340b637b4a6227980b7c14124d9fea49174d3991da71b8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];

  meta = {
    description = "The ability to run Python tests using pytest in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
