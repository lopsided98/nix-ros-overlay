
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-copyright";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_copyright/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "d9bab3a68a49ad43efdc682f1afad284440fb6b6b7d0c7860da90df956a95900";
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
