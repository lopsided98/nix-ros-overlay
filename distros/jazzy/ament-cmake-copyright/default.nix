
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-copyright";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_copyright/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "93a3aff2d3bde07345c9fcfcd1af0e51a39f052c5032aaf7ecdbef7fe70108a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-copyright ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-copyright ];

  meta = {
    description = "The CMake API for ament_copyright to check every source file contains copyright reference.";
    license = with lib.licenses; [ asl20 ];
  };
}
