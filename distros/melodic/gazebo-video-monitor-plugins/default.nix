
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, libyamlcpp, message-generation, message-runtime, opencv3, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-gazebo-video-monitor-plugins";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitor_plugins-release/archive/release/melodic/gazebo_video_monitor_plugins/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "181d2df71aab8de8603e287de380d92d38ae97dfd55aa6ce1e69da37cbfd74bc";
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
