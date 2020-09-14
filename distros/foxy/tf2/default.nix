
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, console-bridge, console-bridge-vendor, geometry-msgs, rcutils }:
buildRosPackage {
  pname = "ros-foxy-tf2";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "a88d47d76b22085a22ec35ccb9e861ac9ea0a69a76dc99798856181c5f709e06";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor geometry-msgs rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tf2 is the second generation of the transform library, which lets
    the user keep track of multiple coordinate frames over time. tf2
    maintains the relationship between coordinate frames in a tree
    structure buffered in time, and lets the user transform points,
    vectors, etc between any two coordinate frames at any desired
    point in time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
