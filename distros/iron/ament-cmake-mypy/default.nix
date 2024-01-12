
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-mypy }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-mypy";
  version = "0.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_cmake_mypy/0.14.2-1.tar.gz";
    name = "0.14.2-1.tar.gz";
    sha256 = "be53d19a4d166175f09794b4c9a32996ef475805ebfe4a5b5aaa7c6665ca91d7";
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
