
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap-server }:
buildRosPackage {
  pname = "ros-melodic-octomap-mapping";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/melodic/octomap_mapping/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "4de0af1b402b7e50dd92835c84a45f9ce90467fe3bf16a714d185e6830891b4e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mapping tools to be used with the <a href="https://octomap.github.io/">OctoMap library</a>, implementing a 3D occupancy grid mapping.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
