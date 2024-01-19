
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genmsg";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genmsg-release/archive/release/noetic/genmsg/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "64ea7374aff61084f36ed781a20e44dbccecbf5ff24a3d6c6f9218e57fbfaa9e";
  };

  buildType = "catkin";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ catkin python3Packages.empy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Standalone Python library for generating ROS message and service data structures for various languages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
