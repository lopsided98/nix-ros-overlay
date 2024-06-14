
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-pytest";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_pytest/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "ef930cd42a6e14964fa6267d1f2c89eb7648548cab8ac3c08df9608733406e8d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];

  meta = {
    description = "The ability to run Python tests using pytest in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
