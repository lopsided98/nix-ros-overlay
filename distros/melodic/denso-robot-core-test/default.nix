
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, bcap-core, catkin, denso-robot-core, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-core-test";
  version = "3.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DENSORobot";
        repo = "denso_robot_ros-release";
        rev = "release/melodic/denso_robot_core_test/3.2.0-1";
        sha256 = "sha256-fQkV9U2Nqstv7bR3HLYw06c9aAj1v1RvQ/WILp0NrRU=";
      };

  buildType = "catkin";
  buildInputs = [ bcap-core catkin denso-robot-core ];
  propagatedBuildInputs = [ actionlib roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot core test package includes a node for testing denso robot core node.'';
    license = with lib.licenses; [ mit ];
  };
}
