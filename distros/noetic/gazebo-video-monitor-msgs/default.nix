
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-msgs";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitor_msgs/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "5440a5c82432425e3d8789d7ed6c9154f5e1e39cd503719d07ecb8a27207cc80";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_video_monitor_msgs defines interfaces for the gazebo_video_monitor_plugins package.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
