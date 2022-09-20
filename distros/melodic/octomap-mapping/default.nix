
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap-server }:
buildRosPackage {
  pname = "ros-melodic-octomap-mapping";
  version = "0.6.7-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/melodic/octomap_mapping/0.6.7-2.tar.gz";
    name = "0.6.7-2.tar.gz";
    sha256 = "da9ba92aeebe8ef2e3247256afdd9afc787e0df5c51938731444a317654556ff";
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
