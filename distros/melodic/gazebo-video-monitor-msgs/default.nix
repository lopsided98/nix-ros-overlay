
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-gazebo-video-monitor-msgs";
  version = "0.6.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "nlamprian";
        repo = "gazebo_video_monitors-release";
        rev = "release/melodic/gazebo_video_monitor_msgs/0.6.0-2";
        sha256 = "sha256-q01uh7O45SEiebkthCb4or60biXaAyjr6vphnX8zUig=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_video_monitor_msgs defines interfaces for the gazebo_video_monitor_plugins package.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
