
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ceres-solver, eigen, fuse-constraints, fuse-core, fuse-graphs, fuse-msgs, fuse-publishers, fuse-variables, gbenchmark, geometry-msgs, message-generation, message-runtime, nav-msgs, pluginlib, roscpp, roslint, rostest, sensor-msgs, std-srvs, tf2, tf2-2d, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fuse-models";
  version = "0.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "locusrobotics";
        repo = "fuse-release";
        rev = "release/melodic/fuse_models/0.4.2-1";
        sha256 = "sha256-XxiZYv0muI50mZkHc0ruzrfsdiAUXM4fh0GQxngf224=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  checkInputs = [ gbenchmark rostest ];
  propagatedBuildInputs = [ boost ceres-solver eigen fuse-constraints fuse-core fuse-graphs fuse-msgs fuse-publishers fuse-variables geometry-msgs message-runtime nav-msgs pluginlib roscpp sensor-msgs std-srvs tf2 tf2-2d tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fuse plugins that implement various kinematic and sensor models'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
