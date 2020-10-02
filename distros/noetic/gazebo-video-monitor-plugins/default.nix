
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, libyamlcpp, message-generation, message-runtime, opencv3, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-plugins";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitor_plugins-release/archive/release/noetic/gazebo_video_monitor_plugins/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "f554e6eaeff123b3461130c6efba13d61c8747c6b6192ba9a3c6262baeb8a59b";
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
