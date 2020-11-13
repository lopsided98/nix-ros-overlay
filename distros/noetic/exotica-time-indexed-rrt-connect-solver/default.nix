
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, ompl }:
buildRosPackage {
  pname = "ros-noetic-exotica-time-indexed-rrt-connect-solver";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_time_indexed_rrt_connect_solver/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "063cfddfaa00d3aeb807117810e5936dd4e9dc294d1d0ff5980b4eae489c8d07";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time-Indexed RRT-Connect solver (Humanoids 2018)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
