
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, python3, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-python-cmake-module";
  version = "0.7.7-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/python_cmake_module/0.7.7-1.tar.gz;
    sha256 = "9ff92ab9f229b7d697a6a8f95363186d4286c854a7b1e026c0f0f792e4af2510";
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
