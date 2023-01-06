
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, jsk-footstep-msgs, jsk-interactive-marker, jsk-pcl-ros, jsk-recognition-msgs, jsk-recognition-utils, jsk-rviz-plugins, jsk-topic-tools, message-generation, pcl-ros, roscpp, roseus, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-footstep-planner";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_footstep_planner/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "c9e606876741ca11315de87743e58c85ad0930af4a279564348713d67f02c869";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs jsk-footstep-msgs jsk-interactive-marker jsk-pcl-ros jsk-recognition-msgs jsk-recognition-utils jsk-rviz-plugins jsk-topic-tools pcl-ros roscpp roseus visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_footstep_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
