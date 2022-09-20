
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-video-monitor-msgs, gazebo-video-monitor-plugins }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitors";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitors/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "3f826e78f7e83116edc3d110bd2df6ab8f2109e9447590e59d13325259a448a5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-video-monitor-msgs gazebo-video-monitor-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that groups together the gazebo_video_monitors packages.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
