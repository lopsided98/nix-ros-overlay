
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, console-bridge, console-bridge-vendor, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-tf2";
  version = "0.10.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/tf2/0.10.1-0.tar.gz";
    name = "0.10.1-0.tar.gz";
    sha256 = "33f565f29e58c2675896a0b7dc88df83659a0acd09776f7aa40438ef7713b012";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor geometry-msgs ];
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
