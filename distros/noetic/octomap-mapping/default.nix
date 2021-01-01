
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap-server }:
buildRosPackage {
  pname = "ros-noetic-octomap-mapping";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/noetic/octomap_mapping/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "def38407af47964a673eba4866068684bdfdaa2e06640e7e3d97afadad8ea5d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mapping tools to be used with the <a href="https://octomap.github.io/">OctoMap library</a>, implementing a 3D occupancy grid mapping.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
