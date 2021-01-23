
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-copyright";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_cmake_copyright/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "2a3399e11e3ee502bd526375d781dd7ba486af289c36534ad2ae422ca2e9deb7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-copyright ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-copyright ];

  meta = {
    description = ''The CMake API for ament_copyright to check every source file contains copyright reference.'';
    license = with lib.licenses; [ asl20 ];
  };
}
