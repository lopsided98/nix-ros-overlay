
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, rospy, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-utils";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitor_utils/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "6bde91c72bbd0a92a53a00ca2108ea313523e78789c0b989e35a1709dfbcf604";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs rospy std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_video_monitor_utils contains utility scripts that are meant to interact with the gazebo video monitor plugins.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
