
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, libyamlcpp, message-generation, message-runtime, opencv3, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-video-monitor-plugins";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitor_plugins-release/archive/release/noetic/gazebo_video_monitor_plugins/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "819039b058b29f41377ddfbf01e9bd14744c460c920d52ed435f8d5a5512dfe1";
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
