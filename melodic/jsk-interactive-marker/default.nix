
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-rviz-plugins, geometry-msgs, urdf, eigen-conversions, interactive-markers, tf, jsk-footstep-msgs, rosbuild, sensor-msgs, dynamic-reconfigure, cmake-modules, roslib, libyamlcpp, jsk-topic-tools, message-filters, roseus, dynamic-tf-publisher, jsk-recognition-msgs, catkin, jsk-recognition-utils, roscpp, message-generation, actionlib, tinyxml, rviz, moveit-msgs, visualization-msgs, message-runtime, tf-conversions, mk }:
buildRosPackage {
  pname = "ros-melodic-jsk-interactive-marker";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_interactive_marker/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "9d011fe79c6eda3b54a31289ca6fa2073bd601771d4a788195992a87741f3a9a";
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
