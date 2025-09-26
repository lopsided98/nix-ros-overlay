
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-angles";
  version = "1.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/angles-release/archive/release/rolling/angles/1.16.1-1.tar.gz";
    name = "1.16.1-1.tar.gz";
    sha256 = "d49d55efb83a16eab3b611081621d64a13ac052eae3837b4d621834e66ad3a8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python python3Packages.setuptools ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python3Packages.setuptools ];

  meta = {
    description = "This package provides a set of simple math utilities to work
        with angles. The utilities cover simple things like
        normalizing an angle and conversion between degrees and
        radians. But even if you're trying to calculate things like
        the shortest angular distance between two joint space
        positions of your robot, but the joint motion is constrained
        by joint limits, this package is what you need. The code in
        this package is stable and well tested. There are no plans for
        major changes in the near future.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
