
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-rolling-python-cmake-module";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_cmake_module-release/archive/release/rolling/python_cmake_module/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "ce829ec41a00841dec9b1a3bd359e3f01274f1d004c1d7483b66238e8ff6f49a";
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
