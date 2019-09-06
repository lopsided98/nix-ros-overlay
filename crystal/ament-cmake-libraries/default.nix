
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-libraries";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_libraries/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "46209d3b0b471e2b4aa957a931a5edea0b7ad3d837cde55dec489a3bd353596d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The functionality to deduplicate libraries in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
