
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, ompl }:
buildRosPackage {
  pname = "ros-kinetic-exotica-time-indexed-rrt-connect-solver";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_time_indexed_rrt_connect_solver/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "3a767882cb81ee4def7f1ba2b485efbb62cde4f68591c3a0ac7c0e76308a8b82";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time-Indexed RRT-Connect solver (Humanoids 2018)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
