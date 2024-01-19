
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, fuse-core, gbenchmark, pluginlib, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-fuse-graphs";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/noetic/fuse_graphs/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "a564f0d36acc87d70950394812a317521f5e06553db46032203a087179709fd3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gbenchmark roslint rostest ];
  propagatedBuildInputs = [ ceres-solver fuse-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_graphs package provides some concrete implementations of the fuse_core::Graph interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
