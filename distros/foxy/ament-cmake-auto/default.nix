
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-auto";
  version = "0.9.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_auto/0.9.10-1.tar.gz";
    name = "0.9.10-1.tar.gz";
    sha256 = "2cd32be1d4b6e1ac63c2b6ca4114165d82dbc2cba9c04296e92919c2d4e0acba";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
