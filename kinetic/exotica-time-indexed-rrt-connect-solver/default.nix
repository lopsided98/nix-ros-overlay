
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-core, catkin, ompl }:
buildRosPackage {
  pname = "ros-kinetic-exotica-time-indexed-rrt-connect-solver";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_time_indexed_rrt_connect_solver/5.0.0-0.tar.gz;
    sha256 = "723f365f55eb060e8f1fd2a38996f8ea2f9c075a9b8185b015819bc325c42e0f";
  };

  buildInputs = [ exotica-core ompl ];
  propagatedBuildInputs = [ exotica-core ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time-Indexed RRT-Connect solver (Humanoids 2018)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
