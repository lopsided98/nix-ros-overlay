
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-iron-python-cmake-module";
  version = "0.10.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_cmake_module-release/archive/release/iron/python_cmake_module/0.10.2-3.tar.gz";
    name = "0.10.2-3.tar.gz";
    sha256 = "c98a27034ae0990381043b84fbc8d8d0b8982e6d7dbf1b76f46882a7c31837c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3 ];
  nativeBuildInputs = [ ament-cmake python3 ];

  meta = {
    description = ''Provide CMake module with extra functionality for Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
