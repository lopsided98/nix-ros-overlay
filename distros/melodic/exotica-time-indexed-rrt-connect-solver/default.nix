
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, ompl }:
buildRosPackage {
  pname = "ros-melodic-exotica-time-indexed-rrt-connect-solver";
  version = "5.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_time_indexed_rrt_connect_solver/5.1.3-3.tar.gz";
    name = "5.1.3-3.tar.gz";
    sha256 = "738b1d76c6ace5a5385eef6bddcf758f58a1c7d066e9dd2daca20d35687c59f4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time-Indexed RRT-Connect solver (Humanoids 2018)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
