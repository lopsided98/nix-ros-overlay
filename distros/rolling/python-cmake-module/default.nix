
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-rolling-python-cmake-module";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_cmake_module-release/archive/release/rolling/python_cmake_module/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "3cdfaaa339d1a39ebb2f0b395924ae7869aec5f6d1a012c33b685f1624023adb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3 ];
  nativeBuildInputs = [ ament-cmake python3 ];

  meta = {
    description = "Provide CMake module with extra functionality for Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
