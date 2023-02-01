
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-play-motion-builder-msgs";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-robotics";
        repo = "play_motion_builder-release";
        rev = "release/melodic/play_motion_builder_msgs/1.0.2-1";
        sha256 = "sha256-/pkeLQca48B0hEGVxbGEyVcpzyoEx6s/H2Ys58kSYxs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The play_motion_builder_msgs package'';
    license = with lib.licenses; [ "LGPL-3.0" ];
  };
}
