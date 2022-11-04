
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, catkin, cv-bridge, ffmpeg, image-transport, roscpp, roslib, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-web-video-server";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/web_video_server-release/archive/release/melodic/web_video_server/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "6280be50271f4d288665701715b2053fd31bc2fc0032a26956aad9cd17fc761b";
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
