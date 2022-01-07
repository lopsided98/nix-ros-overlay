
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-angles";
  version = "1.12.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/angles-release/archive/release/galactic/angles/1.12.4-2.tar.gz";
    name = "1.12.4-2.tar.gz";
    sha256 = "374d88ee725f7a532408549f8933795ec1d360095395410b1c8f72a6c307a17b";
  };

  buildType = "ament_cmake";
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
