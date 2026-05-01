
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-lyrical-python-cmake-module";
  version = "0.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_cmake_module-release/archive/release/lyrical/python_cmake_module/0.12.0-3.tar.gz";
    name = "0.12.0-3.tar.gz";
    sha256 = "5784ae005b0dc06ca2e71cfae8bb93a13ec4e81f122d4ddbb3446126a1235cb8";
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
