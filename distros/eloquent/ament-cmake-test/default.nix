
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-test";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/eloquent/ament_cmake_test/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "24b6bb95ebc28f3c6ae2479fb2bc98cf277cba1a2e401f5a912c123d124b6191";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ];

  meta = {
    description = ''The ability to add tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
