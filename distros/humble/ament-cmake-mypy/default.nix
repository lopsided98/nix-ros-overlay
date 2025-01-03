
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-mypy }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-mypy";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_mypy/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "5a0a0076a9859055aa44728ca25dafcff15505aaa95fc1b0d160b903b5ed5486";
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
