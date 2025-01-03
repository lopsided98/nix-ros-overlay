
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap-server }:
buildRosPackage {
  pname = "ros-noetic-octomap-mapping";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/noetic/octomap_mapping/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "043e8ad5df165c8844dfdef8279ef0a498a091741fa09a52aa20ba114c1a3253";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Mapping tools to be used with the <a href=\"https://octomap.github.io/\">OctoMap library</a>, implementing a 3D occupancy grid mapping.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
