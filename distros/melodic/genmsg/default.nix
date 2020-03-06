
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genmsg";
  version = "0.5.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genmsg-release/archive/release/melodic/genmsg/0.5.15-1.tar.gz";
    name = "0.5.15-1.tar.gz";
    sha256 = "305bf8208b91e7921b7d186e9185f6c579e0e07ffb1d3487b35d76e6bd5f9504";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin pythonPackages.empy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Standalone Python library for generating ROS message and service data structures for various languages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
