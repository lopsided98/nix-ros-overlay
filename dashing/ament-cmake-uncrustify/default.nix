
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-uncrustify, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-uncrustify";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_uncrustify/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "ce410158b2a5d902cff34afcd01c6f0276a62886cab3dc85ef1e4ae1c3fb1e9f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-uncrustify ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_uncrustify to check code against styleconventions
    using uncrustify.'';
    license = with lib.licenses; [ asl20 ];
  };
}
