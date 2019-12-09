
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ffmpeg, catkin, roslib, async-web-server-cpp, image-transport, cv-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-web-video-server";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/web_video_server-release/archive/release/kinetic/web_video_server/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "7e0bd6e75bf467c4f81237e3795759e6f710bb519902eb28b0077e13a4164577";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs ffmpeg async-web-server-cpp roslib image-transport cv-bridge roscpp ];
  propagatedBuildInputs = [ sensor-msgs ffmpeg async-web-server-cpp roslib image-transport cv-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''HTTP Streaming of ROS Image Topics in Multiple Formats'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
