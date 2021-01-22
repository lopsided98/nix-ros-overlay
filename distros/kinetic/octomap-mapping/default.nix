
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap-server }:
buildRosPackage {
  pname = "ros-kinetic-octomap-mapping";
  version = "0.6.4-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/kinetic/octomap_mapping/0.6.4-2.tar.gz";
    name = "0.6.4-2.tar.gz";
    sha256 = "9385247828b1a759622216376ac7a86d9d48ec0c8f15993f1cf6f7f8aed97a9d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mapping tools to be used with the <a href="https://octomap.github.io/">OctoMap library</a>, implementing a 3D occupancy grid mapping.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
