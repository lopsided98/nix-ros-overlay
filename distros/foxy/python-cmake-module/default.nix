
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-foxy-python-cmake-module";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_cmake_module-release/archive/release/foxy/python_cmake_module/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "8693f665b38570b167804d0bb681fd8ffcccc1b0d634a13dcaa67750bd9cceeb";
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
