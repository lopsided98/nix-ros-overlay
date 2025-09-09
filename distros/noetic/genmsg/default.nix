
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genmsg";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genmsg-release/archive/release/noetic/genmsg/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "9029cac5c2aa0532829debfa16cbb3810580acaa11bc315894df9cfe1d04f8ed";
  };

  buildType = "catkin";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ catkin python3Packages.empy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Standalone Python library for generating ROS message and service data structures for various languages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
