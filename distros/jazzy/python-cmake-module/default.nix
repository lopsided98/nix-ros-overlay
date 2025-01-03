
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-jazzy-python-cmake-module";
  version = "0.11.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_cmake_module-release/archive/release/jazzy/python_cmake_module/0.11.1-2.tar.gz";
    name = "0.11.1-2.tar.gz";
    sha256 = "b96f0c52c30e6de93b5cd8e98f8194682171e7ab4e62914e1782bbe6e6bbf837";
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
