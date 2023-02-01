
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, pr2-common-action-msgs, pr2-controllers-msgs, rospy, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-tuck-arms-action";
  version = "0.0.11";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_common_actions-release";
        rev = "release/melodic/pr2_tuck_arms_action/0.0.11-0";
        sha256 = "sha256-tqYIHCCWRBGw30zWG71SpPaHp4evybIyvG1Nc0qXIc4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs pr2-common-action-msgs pr2-controllers-msgs rospy trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_tuck_arms_action package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
