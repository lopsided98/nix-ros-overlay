
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-mypy }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-mypy";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_mypy/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "3aab86c87164a856d5c5368ab2462eddb05eb664af4e867438ed46306730e9d7";
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
