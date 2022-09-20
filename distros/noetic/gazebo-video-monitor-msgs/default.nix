
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitor_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "fb83f6679b5bca82292f7f0795c1d10487b89f50aa1512b00265b6850b118a7a";
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
