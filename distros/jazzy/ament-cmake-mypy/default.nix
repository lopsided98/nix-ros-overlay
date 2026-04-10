
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-mypy }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-mypy";
  version = "0.17.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_mypy/0.17.5-1.tar.gz";
    name = "0.17.5-1.tar.gz";
    sha256 = "63bfd4e48ee8f5c1fc178fa865e44b78802225540296ccef3821cc513b794261";
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
