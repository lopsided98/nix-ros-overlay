
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, controller-interface, controller-manager, geometry-msgs, joint-trajectory-controller, moveit-core, moveit-ros-planning, pilz-msgs, pilz-testutils, pilz-utils, roscpp, roslint, rostest, rosunit, std-srvs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-control";
  version = "0.5.23-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "pilz_robots-release";
        rev = "release/melodic/pilz_control/0.5.23-1";
        sha256 = "sha256-5M4hwwtNn2kXxaqeNxnZW/r78obeYry1u/EHifaA+Po=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules roslint ];
  checkInputs = [ code-coverage geometry-msgs pilz-testutils pilz-utils rostest rosunit tf2 tf2-geometry-msgs ];
  propagatedBuildInputs = [ controller-interface controller-manager joint-trajectory-controller moveit-core moveit-ros-planning pilz-msgs roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a specialized joint_trajectory_controller that can be moved into holding state via service call.
  No further trajectories will be accepted/followed in this state.'';
    license = with lib.licenses; [ asl20 ];
  };
}
