
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-octomap-msgs";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_msgs-release/archive/release/noetic/octomap_msgs/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "3547dfabcaef35b1f13dc0094abbd6dde8e390387440786ebe13f0a493caa930";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides messages and serializations / conversion for the <a href="http://octomap.github.io">OctoMap library</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
