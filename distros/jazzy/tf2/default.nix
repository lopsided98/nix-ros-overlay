
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, builtin-interfaces, geometry-msgs, rcutils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tf2";
  version = "0.36.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/tf2/0.36.11-1.tar.gz";
    name = "0.36.11-1.tar.gz";
    sha256 = "ad5a4bea1b0f0bd8041e1aef559359b9fc3dca5961031f2e44b7efd9f2f4ab4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-google-benchmark ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rcutils rosidl-runtime-cpp ];
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
