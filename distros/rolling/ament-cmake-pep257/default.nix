
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pep257 }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pep257";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_pep257/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "7b9a4f39833dd32c4f6f0842efa784282760a4c523a685d31b7517c7e36860a1";
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
