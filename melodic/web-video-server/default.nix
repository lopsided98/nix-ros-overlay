
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, image-transport, sensor-msgs, cv-bridge, catkin, ffmpeg, roslib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-web-video-server";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/web_video_server-release/archive/release/melodic/web_video_server/0.2.0-0.tar.gz;
    sha256 = "f9939d41942b68c98fd43940bcccc09d257bd981021d01d64afeaf7f0a77cca8";
  };

  propagatedBuildInputs = [ roslib cv-bridge async-web-server-cpp image-transport sensor-msgs roscpp ffmpeg ];
  nativeBuildInputs = [ roslib catkin cv-bridge async-web-server-cpp image-transport sensor-msgs roscpp ffmpeg ];

  meta = {
    description = ''HTTP Streaming of ROS Image Topics in Multiple Formats'';
    #license = lib.licenses.BSD;
  };
}
