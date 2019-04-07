
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, jsk-pcl-ros, jsk-footstep-msgs, catkin, jsk-topic-tools, roscpp, jsk-rviz-plugins, message-generation, jsk-interactive-marker, jsk-recognition-msgs, pcl-ros, jsk-recognition-utils, dynamic-reconfigure, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-footstep-planner";
  version = "0.1.14";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_footstep_planner/0.1.14-0.tar.gz;
    sha256 = "823eff27f809adc07f6542759b8b3a1b28e06650254e5fb2de797e3ed8ba7ee2";
  };

  buildInputs = [ roseus jsk-footstep-msgs jsk-topic-tools roscpp jsk-rviz-plugins message-generation jsk-interactive-marker jsk-recognition-utils pcl-ros dynamic-reconfigure visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ roseus jsk-pcl-ros jsk-footstep-msgs jsk-topic-tools roscpp jsk-rviz-plugins jsk-interactive-marker jsk-recognition-utils pcl-ros jsk-recognition-msgs dynamic-reconfigure visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_footstep_planner'';
    #license = lib.licenses.BSD;
  };
}
