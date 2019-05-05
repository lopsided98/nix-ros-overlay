
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-core, catkin, ompl }:
buildRosPackage {
  pname = "ros-melodic-exotica-time-indexed-rrt-connect-solver";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_time_indexed_rrt_connect_solver/5.0.0-0.tar.gz;
    sha256 = "e5b831d55d98996965fed4fcdd67e9c99bc140caa7b0273227c9805a193565ec";
  };

  buildInputs = [ exotica-core ompl ];
  propagatedBuildInputs = [ exotica-core ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time-Indexed RRT-Connect solver (Humanoids 2018)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
