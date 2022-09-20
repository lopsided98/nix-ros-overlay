
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-video-monitor-msgs, libyamlcpp, opencv, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-gazebo-video-monitor-plugins";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/melodic/gazebo_video_monitor_plugins/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "b33909506f81e443d5246da568e8465b808bb82192a9b21d9e141c41a06e2d73";
  };

  buildType = "catkin";
  buildInputs = [ catkin libyamlcpp ];
  propagatedBuildInputs = [ gazebo-ros gazebo-video-monitor-msgs opencv roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_video_monitor_plugins is a package that lets the user record videos of a <a href="http://gazebosim.org/">Gazebo</a> simulation. It provides a multicamera sensor that can be used for creating different types of videos with multiple views from inside the gazebo world. There is a number of plugins already available in the package, but more can be developed by the user, with minimal effort, to fit arbitrary use cases.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
