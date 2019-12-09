
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, console-bridge-vendor, ament-cmake, console-bridge, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-tf2";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "0e8a360acb1d79d2909528b63680b33d50587846547332339cdb475a18e9b9a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs console-bridge console-bridge-vendor ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs console-bridge console-bridge-vendor ];
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
