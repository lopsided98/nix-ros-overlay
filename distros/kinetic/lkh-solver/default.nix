
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, resource-retriever, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-lkh-solver";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/crigroup/lkh-release/archive/release/kinetic/lkh_solver/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "748f67711adbad6e79cecca25ce73c1156f8dfe5708828ecb000f2c81db4b4b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ resource-retriever roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for solving the Traveling Salesman Problem using the
    Lin-Kernighan heuristic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
