
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism-msgs";
  version = "1.8.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "pr2_mechanism_msgs-release";
        rev = "release/melodic/pr2_mechanism_msgs/1.8.2-0";
        sha256 = "sha256-eKaRMpfyKkOAMpTlbgQIZFfrLdgbFGwnpWQxLqruhjY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines services that are used to communicate with
     the realtime control loop. It also defines messages
     that represent the state of the realtime controllers, the joints
     and the actuators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
