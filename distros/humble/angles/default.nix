
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-humble-angles";
  version = "1.13.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/angles-release/archive/release/humble/angles/1.13.0-3.tar.gz";
    name = "1.13.0-3.tar.gz";
    sha256 = "02c2047e640dfd8c64cc9df09d782564134db279c0396e0d5c177c728e36a9d3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake python3Packages.setuptools ];

  meta = {
    description = ''This package provides a set of simple math utilities to work
        with angles. The utilities cover simple things like
        normalizing an angle and conversion between degrees and
        radians. But even if you're trying to calculate things like
        the shortest angular distance between two joint space
        positions of your robot, but the joint motion is constrained
        by joint limits, this package is what you need. The code in
        this package is stable and well tested. There are no plans for
        major changes in the near future.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
