
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-libraries";
  version = "0.9.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_libraries/0.9.10-1.tar.gz";
    name = "0.9.10-1.tar.gz";
    sha256 = "76591081f263a7ead8d3359282f0dccf8d4e12af3a2834f2c7bb630a35bd576c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The functionality to deduplicate libraries in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
