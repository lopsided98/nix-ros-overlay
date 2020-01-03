
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, geometry-msgs, interactive-markers, jsk-footstep-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-rviz-plugins, jsk-topic-tools, libyamlcpp, message-filters, message-generation, message-runtime, mk, moveit-msgs, rosbuild, roscpp, roseus, roslib, rviz, sensor-msgs, tf, tf-conversions, tinyxml, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-interactive-marker";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_marker/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "197551b92f6e7efa5966f1261631f8a73709fecac74f0bd64c00b3793ab2844d";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation mk rosbuild ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure dynamic-tf-publisher eigen-conversions geometry-msgs interactive-markers jsk-footstep-msgs jsk-recognition-msgs jsk-recognition-utils jsk-rviz-plugins jsk-topic-tools libyamlcpp message-filters message-runtime moveit-msgs roscpp roseus roslib rviz sensor-msgs tf tf-conversions tinyxml urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
