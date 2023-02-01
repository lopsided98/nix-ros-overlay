
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, downward, ff, ffha, lpg-planner, pddl-msgs, rospy, time }:
buildRosPackage {
  pname = "ros-melodic-pddl-planner";
  version = "0.1.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_planning-release";
        rev = "release/melodic/pddl_planner/0.1.12-1";
        sha256 = "sha256-4XFBn1mSv5v0xJRy3bRYRi6IT0J0ho9dnnEB+14Scus=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib downward ff ffha lpg-planner pddl-msgs rospy time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pddl planner wrappers'';
    license = with lib.licenses; [ asl20 ];
  };
}
