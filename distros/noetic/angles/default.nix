
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosunit }:
buildRosPackage {
  pname = "ros-noetic-angles";
  version = "1.9.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_angles_utils-release/archive/release/noetic/angles/1.9.14-1.tar.gz";
    name = "1.9.14-1.tar.gz";
    sha256 = "a34880d681ee68ee08234bc5cda436ff23fd513713558bb54c6fba8ba77d7b11";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ rosunit ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

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
