
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, geometry-msgs, interactive-markers, jsk-footstep-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-rviz-plugins, jsk-topic-tools, libyamlcpp, message-filters, message-generation, message-runtime, mk, moveit-msgs, rosbuild, roscpp, roseus, roslib, rviz, sensor-msgs, tf, tf-conversions, tinyxml, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-interactive-marker";
  version = "2.1.7-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_marker/2.1.7-2.tar.gz";
    name = "2.1.7-2.tar.gz";
    sha256 = "ef8d972b2a7678646e88ca651ae071ce295d35e4ee3977a59e54186fa2534189";
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
