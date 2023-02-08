
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, fuse-core, gbenchmark, pluginlib, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-fuse-graphs";
  version = "0.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "locusrobotics";
        repo = "fuse-release";
        rev = "release/melodic/fuse_graphs/0.4.2-1";
        sha256 = "sha256-cvugc+QoTfpkErB/+qD3bGi0xT24rzvDPzbZT432F3k=";
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
