
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, console-bridge-vendor, console-bridge, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-tf2";
  version = "0.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2/0.11.4-1.tar.gz";
    name = "0.11.4-1.tar.gz";
    sha256 = "6dd9d0814515357692e378aec9015936319c49ab234d110513d78d90a5c0f797";
  };

  buildType = "ament_cmake";
  buildInputs = [ console-bridge console-bridge-vendor geometry-msgs ];
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
