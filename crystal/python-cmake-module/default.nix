
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, python3, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-python-cmake-module";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/crystal/python_cmake_module/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "235463eab00214e06dfd277ca45e4866039703e46edb6747320e251f915bb622";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module with extra functionality for Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
