
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, jsk-footstep-msgs, jsk-interactive-marker, jsk-pcl-ros, jsk-recognition-msgs, jsk-recognition-utils, jsk-rviz-plugins, jsk-topic-tools, message-generation, pcl-ros, roscpp, roseus, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-footstep-planner";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_footstep_planner/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "10d6fe01f1ac03122343242ed695a03ebb0b0510c07ecceb0e4c498be322551f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs jsk-footstep-msgs jsk-interactive-marker jsk-pcl-ros jsk-recognition-msgs jsk-recognition-utils jsk-rviz-plugins jsk-topic-tools pcl-ros roscpp roseus visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "jsk_footstep_planner";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
