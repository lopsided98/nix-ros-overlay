
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-video-monitor-msgs, opencv, roscpp, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-plugins";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/gazebo_video_monitor_plugins/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "75f65f76f92d6da2545a63a2fa23d93e55923cc576c973f11efdb2a5480a71ed";
  };

  buildType = "catkin";
  buildInputs = [ catkin yaml-cpp ];
  propagatedBuildInputs = [ gazebo-ros gazebo-video-monitor-msgs opencv roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_video_monitor_plugins is a package that lets the user record videos of a <a href="http://gazebosim.org/">Gazebo</a> simulation. It provides a multicamera sensor that can be used for creating different types of videos with multiple views from inside the gazebo world. There is a number of plugins already available in the package, but more can be developed by the user, with minimal effort, to fit arbitrary use cases.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
