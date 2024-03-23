
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, builtin-interfaces, console-bridge, console-bridge-vendor, geometry-msgs, rcutils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-rolling-tf2";
  version = "0.36.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2/0.36.0-2.tar.gz";
    name = "0.36.0-2.tar.gz";
    sha256 = "6993fbfbe2d63088d2e6b611765a6d31cbbdc009848c99524ee6eda25e52cd4b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ builtin-interfaces console-bridge console-bridge-vendor geometry-msgs rcutils rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "tf2 is the second generation of the transform library, which lets
    the user keep track of multiple coordinate frames over time. tf2
    maintains the relationship between coordinate frames in a tree
    structure buffered in time, and lets the user transform points,
    vectors, etc between any two coordinate frames at any desired
    point in time.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
