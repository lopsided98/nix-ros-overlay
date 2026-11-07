
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-ros-core, ament-cmake-uncrustify, ament-cmake-xmllint, builtin-interfaces, geometry-msgs, rcutils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-rolling-tf2";
  version = "0.46.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2/0.46.5-1.tar.gz";
    name = "0.46.5-1.tar.gz";
    sha256 = "a424527340d0b24fdc90f14d0816f77703b8fd069c034bd309c1d872d2f28d5c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-google-benchmark ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rcutils rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ament-cmake-ros-core ];

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
