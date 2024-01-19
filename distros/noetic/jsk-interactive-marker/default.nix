
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, geometry-msgs, interactive-markers, jsk-footstep-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-rviz-plugins, jsk-topic-tools, message-filters, message-generation, message-runtime, mk, moveit-msgs, rosbuild, roscpp, roslib, rviz, sensor-msgs, tf, tf-conversions, tinyxml, urdf, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-jsk-interactive-marker";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/jsk_interactive_marker/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "9e07b602208265e5bb46357a019f215995e3f3ebe2adb30a6ecf2223d494f4cd";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation mk rosbuild ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure dynamic-tf-publisher eigen-conversions geometry-msgs interactive-markers jsk-footstep-msgs jsk-recognition-msgs jsk-recognition-utils jsk-rviz-plugins jsk-topic-tools message-filters message-runtime moveit-msgs roscpp roslib rviz sensor-msgs tf tf-conversions tinyxml urdf visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
