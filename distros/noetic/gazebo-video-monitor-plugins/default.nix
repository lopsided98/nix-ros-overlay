
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, libyamlcpp, message-generation, message-runtime, opencv3, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-plugins";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitor_plugins-release/archive/release/noetic/gazebo_video_monitor_plugins/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "e76fe75101a819042fc33303a97631e6e60c7106ca994606ec00ff055a80fac8";
  };

  buildType = "catkin";
  buildInputs = [ libyamlcpp message-generation ];
  propagatedBuildInputs = [ gazebo-ros message-runtime opencv3 roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gazebo_video_monitor_plugins package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
