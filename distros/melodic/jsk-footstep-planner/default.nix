
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, jsk-footstep-msgs, jsk-interactive-marker, jsk-pcl-ros, jsk-recognition-msgs, jsk-recognition-utils, jsk-rviz-plugins, jsk-topic-tools, message-generation, pcl-ros, roscpp, roseus, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-footstep-planner";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_footstep_planner/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "d770bf414226fc21a380fa7da45f974f315bf68b38c400d82e6999f289fc434c";
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
