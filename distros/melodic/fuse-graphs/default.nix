
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, fuse-core, gbenchmark, pluginlib, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-fuse-graphs";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/melodic/fuse_graphs/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "b630f3416c052e14d727a00ffdce6c4cd853400048c39cccb7ae1bdf02d7f30f";
  };

  buildType = "catkin";
  checkInputs = [ gbenchmark roslint rostest ];
  propagatedBuildInputs = [ ceres-solver fuse-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_graphs package provides some concrete implementations of the fuse_core::Graph interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
