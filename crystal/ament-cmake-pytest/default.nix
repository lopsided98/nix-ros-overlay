
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-pytest";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_pytest/0.6.1-0.tar.gz;
    sha256 = "a3ec48306706c8dcdfe3e3a5b2cef99e4faae7ff2273f3c8eef746b9d0be1c73";
  };

  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to run Python tests using pytest in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
