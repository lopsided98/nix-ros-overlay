
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap-server }:
buildRosPackage {
  pname = "ros-noetic-octomap-mapping";
  version = "0.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/noetic/octomap_mapping/0.6.7-1.tar.gz";
    name = "0.6.7-1.tar.gz";
    sha256 = "ee74a243e61605b47a6e8444e0db6edcc84c5e4f4182f53fe42e555aa11ed8d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mapping tools to be used with the <a href="https://octomap.github.io/">OctoMap library</a>, implementing a 3D occupancy grid mapping.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
