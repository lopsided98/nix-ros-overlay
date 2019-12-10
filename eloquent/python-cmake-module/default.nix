
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-eloquent-python-cmake-module";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_cmake_module-release/archive/release/eloquent/python_cmake_module/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "2fa84d2e24ea929b3efcfe3c17d1d91df28c1f2b145fe6f6b2ae9fab882d5ec6";
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
