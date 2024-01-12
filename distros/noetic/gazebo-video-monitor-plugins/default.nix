
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-video-monitor-msgs, opencv, roscpp, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-plugins";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitor_plugins/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "6d90044eddbfa24b6cbae044368068ca8c4960fa72d9c6e5699e905b52961bc6";
  };

  buildType = "catkin";
  buildInputs = [ catkin yaml-cpp ];
  propagatedBuildInputs = [ gazebo-ros gazebo-video-monitor-msgs opencv opencv.cxxdev roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_video_monitor_plugins is a package that lets the user record videos of a <a href="http://gazebosim.org/">Gazebo</a> simulation. It provides a multicamera sensor that can be used for creating different types of videos with multiple views from inside the gazebo world. There is a number of plugins already available in the package, but more can be developed by the user, with minimal effort, to fit arbitrary use cases.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
