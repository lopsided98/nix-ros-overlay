
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, geometry-msgs, interactive-markers, jsk-footstep-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-rviz-plugins, jsk-topic-tools, message-filters, message-generation, message-runtime, mk, moveit-msgs, rosbuild, roscpp, roseus, roslib, rviz, sensor-msgs, tf, tf-conversions, tinyxml, urdf, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-jsk-interactive-marker";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/jsk_interactive_marker/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "16628ac85e7cc754e791554af0d80bd1df819315095edacffa0451c0e2180895";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation mk rosbuild ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure dynamic-tf-publisher eigen-conversions geometry-msgs interactive-markers jsk-footstep-msgs jsk-recognition-msgs jsk-recognition-utils jsk-rviz-plugins jsk-topic-tools message-filters message-runtime moveit-msgs roscpp roseus roslib rviz sensor-msgs tf tf-conversions tinyxml urdf visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "jsk interactive markers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
