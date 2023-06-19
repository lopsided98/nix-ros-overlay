
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pep257 }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pep257";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_pep257/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "2b1c01e30a8fe3fa2af75037ffa70accf8ca0637e76373e38403a9a908be6acd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pep257 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pep257 ];

  meta = {
    description = ''The CMake API for ament_pep257 to check code against the docstring style conventions in
    PEP 257.'';
    license = with lib.licenses; [ asl20 ];
  };
}
