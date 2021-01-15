
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, catkin, cv-bridge, ffmpeg, image-transport, roscpp, roslib, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-web-video-server";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/web_video_server-release/archive/release/kinetic/web_video_server/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "7e0bd6e75bf467c4f81237e3795759e6f710bb519902eb28b0077e13a4164577";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ async-web-server-cpp cv-bridge ffmpeg image-transport roscpp roslib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''HTTP Streaming of ROS Image Topics in Multiple Formats'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
