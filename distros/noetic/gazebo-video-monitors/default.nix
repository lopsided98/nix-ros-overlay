
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-video-monitor-msgs, gazebo-video-monitor-plugins, gazebo-video-monitor-utils }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitors";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitors/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "72d8c707aa2e5a993ff11330df1ab0f6dd91b122cc643a392f2a5e7b653f23c0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-video-monitor-msgs gazebo-video-monitor-plugins gazebo-video-monitor-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that groups together the gazebo_video_monitors packages.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
