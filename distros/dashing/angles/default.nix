
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-angles";
  version = "1.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/angles-release/archive/release/dashing/angles/1.12.2-1.tar.gz";
    name = "1.12.2-1.tar.gz";
    sha256 = "2b98f7906ae2da83adc879796f9f21021d5568d9f09fd86c95ff400b19eef92d";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

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
