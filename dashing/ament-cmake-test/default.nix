
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-test";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_test/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "96a5a939a05e680cfb5337cc288e4dec979890c481b40da102d463b0418b8643";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
