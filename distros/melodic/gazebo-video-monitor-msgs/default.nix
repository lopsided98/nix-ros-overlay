
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-gazebo-video-monitor-msgs";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/melodic/gazebo_video_monitor_msgs/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "9c04d80c315c88867ea5d67a5c7bda2cead7a3d6dd04a6a070394e6a3e6f162d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_video_monitor_msgs defines interfaces for the gazebo_video_monitor_plugins package.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
