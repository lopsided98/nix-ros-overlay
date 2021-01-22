
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-genmsg";
  version = "0.5.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genmsg-release/archive/release/kinetic/genmsg/0.5.11-0.tar.gz";
    name = "0.5.11-0.tar.gz";
    sha256 = "24dbb7dc91d8a7c56f0c65129d80b2f05d3847a39ced744e73ccc295897afa42";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standalone Python library for generating ROS message and service data structures for various languages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
