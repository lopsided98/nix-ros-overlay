
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-msgs";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitor_msgs/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "bd36855ef5dc9dd53ed2bbeacc0ea6d97e2092ce86ae7094538257bdd26bd195";
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
