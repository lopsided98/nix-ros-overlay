
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-mypy }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-mypy";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_mypy/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "143db1d998f24dcb407d6a6641f87ec4b6eee2578d6dae3fdea2405545b12d08";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-mypy ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-mypy ];

  meta = {
    description = "The CMake API for ament_mypy to perform static type analysis on python code
    with mypy.";
    license = with lib.licenses; [ asl20 ];
  };
}
