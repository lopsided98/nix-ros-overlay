
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, image-transport, sensor-msgs, catkin, cv-bridge, ffmpeg, roslib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-web-video-server";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/web_video_server-release/archive/release/kinetic/web_video_server/0.2.0-0.tar.gz;
    sha256 = "77eedd518425f7d2daf382b1e9f6e76614b788eb0c85d8173e7d7ef5e0824b7b";
  };

  buildInputs = [ async-web-server-cpp image-transport sensor-msgs cv-bridge ffmpeg roslib roscpp ];
  propagatedBuildInputs = [ async-web-server-cpp image-transport sensor-msgs cv-bridge ffmpeg roslib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''HTTP Streaming of ROS Image Topics in Multiple Formats'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
