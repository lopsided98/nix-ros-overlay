
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-copyright";
  version = "0.14.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_cmake_copyright/0.14.4-1.tar.gz";
    name = "0.14.4-1.tar.gz";
    sha256 = "ce50bae1355909c795529f963d6e97be0fcf98a37e72fc92624fabac0f485b34";
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
