
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, catkin, cv-bridge, ffmpeg, image-transport, roscpp, roslib, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-web-video-server";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/web_video_server-release/archive/release/noetic/web_video_server/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "7ae5dbf920030dd13a5d7d6010ba398db9efad78a6b382630f7095db0467e467";
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
