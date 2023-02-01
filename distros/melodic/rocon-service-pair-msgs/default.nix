
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-rocon-service-pair-msgs";
  version = "0.9.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_msgs-release";
        rev = "release/melodic/rocon_service_pair_msgs/0.9.0-0";
        sha256 = "sha256-xs/70e38DTrSjYXJhMeJ8XmUbHSguXju8tbIf3HO+gk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rospy uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Paired pubsubs generators for non-blocking services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
