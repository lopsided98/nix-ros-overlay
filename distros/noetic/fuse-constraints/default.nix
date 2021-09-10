
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, eigen, fuse-core, fuse-graphs, fuse-variables, gbenchmark, geometry-msgs, pluginlib, roscpp, roslint, rostest, suitesparse }:
buildRosPackage {
  pname = "ros-noetic-fuse-constraints";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/noetic/fuse_constraints/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "d4af66202bd652c3d3bfc0366d6dd3610b080dfc4618e6a68a8469395d0d947e";
  };

  buildType = "catkin";
  checkInputs = [ gbenchmark roslint rostest ];
  propagatedBuildInputs = [ ceres-solver eigen fuse-core fuse-graphs fuse-variables geometry-msgs pluginlib roscpp suitesparse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_constraints package provides a set of commonly used constraint types, such as direct measurements on
    state variables (absolute constraints) or measurements of the state changes (relative constraints).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
