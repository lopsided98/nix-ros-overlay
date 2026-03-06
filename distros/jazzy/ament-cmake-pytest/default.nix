
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-pytest";
  version = "2.5.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_pytest/2.5.6-2.tar.gz";
    name = "2.5.6-2.tar.gz";
    sha256 = "1cf78784e47cdbd7dc99f0e3be3f57c5d4d8c61e992c877beac2ab391a2f166b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];

  meta = {
    description = "The ability to run Python tests using pytest in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
