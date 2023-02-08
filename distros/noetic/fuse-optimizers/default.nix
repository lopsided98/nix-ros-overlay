
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fuse-constraints, fuse-core, fuse-graphs, fuse-models, fuse-variables, geometry-msgs, nav-msgs, pluginlib, roscpp, roslint, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-fuse-optimizers";
  version = "0.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "locusrobotics";
        repo = "fuse-release";
        rev = "release/noetic/fuse_optimizers/0.4.2-1";
        sha256 = "sha256-sfdo5rzV2QTNUShw+q/DusxeUu0W+1AEHGZtEhPuFuU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ fuse-models geometry-msgs nav-msgs roslint rostest ];
  propagatedBuildInputs = [ diagnostic-updater fuse-constraints fuse-core fuse-graphs fuse-variables pluginlib roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_optimizers package provides a set of optimizer implementations. An optimizer is the object responsible
    for coordinating the sensors and motion model inputs, computing the optimal state values, and providing access to
    to the optimal state via the publishers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
