
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-mypy }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-mypy";
  version = "0.16.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_mypy/0.16.3-2.tar.gz";
    name = "0.16.3-2.tar.gz";
    sha256 = "cbe4b8ae336fac6761233929c5f0ae0a638edbcc68c87731fdb376307da56245";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-mypy ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-mypy ];

  meta = {
    description = ''The CMake API for ament_mypy to perform static type analysis on python code
    with mypy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
