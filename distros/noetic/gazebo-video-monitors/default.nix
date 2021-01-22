
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-video-monitor-msgs, gazebo-video-monitor-plugins }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitors";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitors/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "c17e276b5c9809cb7dc705b0785892e69e73d20c27b17e2e8c91712f9b538f25";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-video-monitor-msgs gazebo-video-monitor-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that groups together the gazebo_video_monitors packages.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
