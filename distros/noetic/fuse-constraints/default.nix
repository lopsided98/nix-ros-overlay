
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, eigen, fuse-core, fuse-graphs, fuse-variables, gbenchmark, geometry-msgs, pluginlib, roscpp, roslint, rostest, suitesparse }:
buildRosPackage {
  pname = "ros-noetic-fuse-constraints";
  version = "0.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "locusrobotics";
        repo = "fuse-release";
        rev = "release/noetic/fuse_constraints/0.4.2-1";
        sha256 = "sha256-HSYCPaQbLzg/fB/PQJ0qnN03lQIP0NKF9kdM78d+blU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gbenchmark roslint rostest ];
  propagatedBuildInputs = [ ceres-solver eigen fuse-core fuse-graphs fuse-variables geometry-msgs pluginlib roscpp suitesparse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_constraints package provides a set of commonly used constraint types, such as direct measurements on
    state variables (absolute constraints) or measurements of the state changes (relative constraints).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
