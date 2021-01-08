
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap-server }:
buildRosPackage {
  pname = "ros-melodic-octomap-mapping";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/melodic/octomap_mapping/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "f1f29ddb95c6b2ff8a93fa7f3fa91cbc1fce4c0a8901bcce4bc45cb1b6eb3b0a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mapping tools to be used with the <a href="https://octomap.github.io/">OctoMap library</a>, implementing a 3D occupancy grid mapping.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
