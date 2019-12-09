
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-rviz-plugins, geometry-msgs, urdf, eigen-conversions, interactive-markers, tf, jsk-footstep-msgs, rosbuild, sensor-msgs, dynamic-reconfigure, cmake-modules, roslib, libyamlcpp, jsk-topic-tools, message-filters, roseus, dynamic-tf-publisher, jsk-recognition-msgs, catkin, jsk-recognition-utils, roscpp, message-generation, actionlib, tinyxml, rviz, moveit-msgs, visualization-msgs, message-runtime, tf-conversions, mk }:
buildRosPackage {
  pname = "ros-kinetic-jsk-interactive-marker";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_marker/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "197551b92f6e7efa5966f1261631f8a73709fecac74f0bd64c00b3793ab2844d";
  };

  buildType = "catkin";
  buildInputs = [ jsk-rviz-plugins geometry-msgs urdf eigen-conversions interactive-markers tf jsk-footstep-msgs rosbuild sensor-msgs dynamic-reconfigure cmake-modules roslib libyamlcpp jsk-topic-tools message-filters roseus dynamic-tf-publisher jsk-recognition-msgs jsk-recognition-utils roscpp message-generation actionlib tinyxml rviz moveit-msgs visualization-msgs tf-conversions mk ];
  propagatedBuildInputs = [ jsk-rviz-plugins geometry-msgs urdf eigen-conversions interactive-markers tf jsk-footstep-msgs sensor-msgs dynamic-reconfigure roslib libyamlcpp jsk-topic-tools message-filters roseus dynamic-tf-publisher jsk-recognition-msgs jsk-recognition-utils roscpp actionlib tinyxml rviz moveit-msgs visualization-msgs message-runtime tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
