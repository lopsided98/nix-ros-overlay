
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, catkin, cv-bridge, ffmpeg, image-transport, roscpp, roslib, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-web-video-server";
  version = "0.2.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RobotWebTools-release";
        repo = "web_video_server-release";
        rev = "release/noetic/web_video_server/0.2.2-1";
        sha256 = "sha256-Y3UgRPY8mOWOn5x573wnsZxJXI9EXrOC55HCJKztwVY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ async-web-server-cpp cv-bridge ffmpeg image-transport roscpp roslib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''HTTP Streaming of ROS Image Topics in Multiple Formats'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
