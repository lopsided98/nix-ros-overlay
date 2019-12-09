
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, jsk-rviz-plugins, jsk-topic-tools, geometry-msgs, roseus, dynamic-reconfigure, jsk-pcl-ros, jsk-recognition-msgs, catkin, jsk-recognition-utils, jsk-footstep-msgs, visualization-msgs, roscpp, message-generation, jsk-interactive-marker }:
buildRosPackage {
  pname = "ros-kinetic-jsk-footstep-planner";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_footstep_planner/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "823eff27f809adc07f6542759b8b3a1b28e06650254e5fb2de797e3ed8ba7ee2";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros jsk-rviz-plugins jsk-topic-tools geometry-msgs roseus dynamic-reconfigure jsk-recognition-utils jsk-footstep-msgs visualization-msgs roscpp message-generation jsk-interactive-marker ];
  propagatedBuildInputs = [ pcl-ros jsk-rviz-plugins jsk-topic-tools geometry-msgs roseus dynamic-reconfigure jsk-pcl-ros jsk-recognition-msgs jsk-recognition-utils jsk-footstep-msgs visualization-msgs roscpp jsk-interactive-marker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_footstep_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
