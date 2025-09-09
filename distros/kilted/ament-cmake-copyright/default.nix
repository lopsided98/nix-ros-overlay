
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-copyright";
  version = "0.19.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_cmake_copyright/0.19.2-2.tar.gz";
    name = "0.19.2-2.tar.gz";
    sha256 = "b87afa03ddc746a00c89e07f71188c2d21ef683299a6cc6f3155235aa465b870";
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
