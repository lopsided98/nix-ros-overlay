
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, mbf-costmap-core, mbf-msgs, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveback-recovery";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uos-gbp";
        repo = "mbf_recovery_behaviors";
        rev = "release/melodic/moveback_recovery/0.1.0-1";
        sha256 = "sha256-cFpZhU4qXC89mlEOpbqW3rQp9deIiALdL3qMtdA6o0w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ base-local-planner costmap-2d mbf-costmap-core mbf-msgs pluginlib roscpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Move Base Flex (MBF) recovery behavior moves the robot back for specified length.
        It also checks the costmap for a possible collision behind the robot while moving and
        stops the robot if necessary.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
