
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tinyxml, dynamic-tf-publisher, actionlib, tf-conversions, tf, geometry-msgs, jsk-footstep-msgs, message-filters, jsk-topic-tools, message-generation, rviz, message-runtime, eigen-conversions, roslib, roseus, mk, catkin, rosbuild, jsk-rviz-plugins, urdf, jsk-recognition-msgs, moveit-msgs, roscpp, visualization-msgs, cmake-modules, libyamlcpp, sensor-msgs, interactive-markers, jsk-recognition-utils, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-jsk-interactive-marker";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_marker/2.1.5-0.tar.gz;
    sha256 = "197551b92f6e7efa5966f1261631f8a73709fecac74f0bd64c00b3793ab2844d";
  };

  buildInputs = [ roseus mk rosbuild tinyxml dynamic-tf-publisher jsk-rviz-plugins urdf jsk-recognition-msgs actionlib tf-conversions moveit-msgs tf roscpp visualization-msgs geometry-msgs cmake-modules libyamlcpp sensor-msgs jsk-footstep-msgs message-filters jsk-topic-tools message-generation rviz interactive-markers jsk-recognition-utils dynamic-reconfigure eigen-conversions roslib ];
  propagatedBuildInputs = [ roseus tinyxml dynamic-tf-publisher jsk-rviz-plugins urdf jsk-recognition-msgs actionlib tf-conversions moveit-msgs tf roscpp visualization-msgs geometry-msgs libyamlcpp sensor-msgs jsk-footstep-msgs message-filters jsk-topic-tools rviz message-runtime interactive-markers dynamic-reconfigure jsk-recognition-utils eigen-conversions roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk interactive markers'';
    #license = lib.licenses.BSD;
  };
}
