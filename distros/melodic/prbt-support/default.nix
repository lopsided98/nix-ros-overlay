
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-chain-node, canopen-motor-node, catkin, cmake-modules, code-coverage, controller-manager, eigen, joint-state-controller, joint-state-publisher, moveit-core, moveit-ros-planning, pilz-control, pilz-status-indicator-rqt, pilz-testutils, pilz-utils, prbt-hardware-support, robot-state-publisher, roscpp, roslaunch, roslint, rosservice, rostest, rosunit, rviz, sensor-msgs, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-support";
  version = "0.5.23-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "pilz_robots-release";
        rev = "release/melodic/prbt_support/0.5.23-1";
        sha256 = "sha256-2p2wj6yyAihn/Ue4We7XOOnDKphPC5WBdJV+TKEBIiE=";
      };

  buildType = "catkin";
  buildInputs = [ canopen-chain-node catkin pilz-utils roslint sensor-msgs ];
  checkInputs = [ cmake-modules code-coverage eigen joint-state-publisher moveit-core moveit-ros-planning pilz-testutils prbt-hardware-support roslaunch rostest rosunit rviz ];
  propagatedBuildInputs = [ canopen-motor-node controller-manager joint-state-controller pilz-control pilz-status-indicator-rqt prbt-hardware-support robot-state-publisher roscpp rosservice topic-tools xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
