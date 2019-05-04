
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, octomap-server, catkin }:
buildRosPackage {
  pname = "ros-kinetic-octomap-mapping";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap_mapping-release/archive/release/kinetic/octomap_mapping/0.6.1-0.tar.gz;
    sha256 = "109367aa699fdd9057fe985315d3efb79bf8f881dd9d6f260e7a4a17d47b5fdb";
  };

  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mapping tools to be used with the <a href="http://octomap.github.io/">OctoMap library</a>, implementing a 3D occupancy grid mapping.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
