
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, pr2-controllers-msgs, roscpp, roslaunch, rospy, rostest, std-msgs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-pr2-teleop";
  version = "0.6.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_apps-release";
        rev = "release/noetic/pr2_teleop/0.6.2-1";
        sha256 = "sha256-yLFvttgndDeLj+/RXx0fSEyY236N1cuO2RjHMdaYPVQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ actionlib geometry-msgs pr2-controllers-msgs roscpp rospy std-msgs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_teleop package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
