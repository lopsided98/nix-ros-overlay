
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, console-bridge, console-bridge-vendor, geometry-msgs, rcutils }:
buildRosPackage {
  pname = "ros-galactic-tf2";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/galactic/tf2/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "10517a3f33bad04cbafb7fcf5acc01f63b1595dd1ba95725db2e9f55a92547e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
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
