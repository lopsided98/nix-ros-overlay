
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap-server }:
buildRosPackage {
  pname = "ros-noetic-octomap-mapping";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/noetic/octomap_mapping/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "ef7c822397cc941c913514aa47f35c8d5efaa6de66b7071cb052c693139e1f69";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mapping tools to be used with the <a href="https://octomap.github.io/">OctoMap library</a>, implementing a 3D occupancy grid mapping.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
