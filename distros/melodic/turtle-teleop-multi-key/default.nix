
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-turtle-teleop-multi-key";
  version = "0.0.4-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "EngHyu";
        repo = "turtle_teleop_multi_key-release";
        rev = "release/melodic/turtle_teleop_multi_key/0.0.4-3";
        sha256 = "sha256-fsA78UrGVwMnzuIjwBTa38XgNoRAw3HrNV9SJnoFyFA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using multi-key input for Turtlesim/Turtlebot3.'';
    license = with lib.licenses; [ mit ];
  };
}
