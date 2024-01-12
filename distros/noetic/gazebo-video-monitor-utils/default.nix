
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, rospy, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-utils";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitor_utils/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "bb96cd219751dbbc6bed9bfa0ec1c972afab07fbaa151b2b78f7418e4cc76adf";
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
