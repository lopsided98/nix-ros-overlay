
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage rec {
  pname = "ros-dashing-ament-cmake-test";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_test/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "63ed3c09acd53fffc92055b2251bfd72eb1bb0b9787640b2b8004633576f8ce7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
