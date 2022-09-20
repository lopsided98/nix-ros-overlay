
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-angles";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/angles-release/archive/release/galactic/angles/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "3c77795be096e8bbeb34b3ae79528a2764cf5db6177361ab208e3321f223b866";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3Packages.setuptools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python3Packages.setuptools ];

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
