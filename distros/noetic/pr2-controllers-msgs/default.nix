
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-controllers-msgs";
  version = "1.10.18-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_controllers-release";
        rev = "release/noetic/pr2_controllers_msgs/1.10.18-1";
        sha256 = "sha256-6j+k75lKtzbHnP3R6Qwi9sOXbY5/xwn9fjjdFGTnKWY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services, and actions used in the pr2_controllers stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
