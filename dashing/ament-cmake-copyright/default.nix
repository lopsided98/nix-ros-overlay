
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-copyright, ament-cmake-core, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-copyright";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_copyright/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "9692a6f6a791e3a183fd99516d96902c43addc9ea3235e4db7a0a32e4756467c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-copyright ];
  nativeBuildInputs = [ ament-cmake-test ament-copyright ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_copyright to check every source file contains copyright reference.'';
    license = with lib.licenses; [ asl20 ];
  };
}
