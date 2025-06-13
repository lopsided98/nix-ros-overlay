
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-kilted-python-cmake-module";
  version = "0.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_cmake_module-release/archive/release/kilted/python_cmake_module/0.12.0-2.tar.gz";
    name = "0.12.0-2.tar.gz";
    sha256 = "2edb8d1ce94bf97d5b647a948d2c7a39f945f43e451dcd422cea81e7df38821f";
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
