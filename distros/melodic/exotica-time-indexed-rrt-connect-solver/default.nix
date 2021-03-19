
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, ompl }:
buildRosPackage {
  pname = "ros-melodic-exotica-time-indexed-rrt-connect-solver";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_time_indexed_rrt_connect_solver/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "e5a7ec765b686a4d7f8aa8ffcc6b2a3c01fdc59cd7c1e3555d78d2404d536937";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time-Indexed RRT-Connect solver (Humanoids 2018)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
