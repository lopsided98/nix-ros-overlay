
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, interactive-markers, pluginlib, ogre1_9, map-msgs, tf, image-transport, eigen, nav-msgs, sensor-msgs, urdfdom-headers, assimp, resource-retriever, cmake-modules, roslib, libyamlcpp, qt5, rosbag, rosconsole, media-export, message-filters, std-msgs, std-srvs, catkin, roscpp, rospy, python-qt-binding, libGLU, laser-geometry, libGL, tinyxml, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rviz";
  version = "1.12.17";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rviz-release/archive/release/kinetic/rviz/1.12.17-0.tar.gz";
    name = "1.12.17-0.tar.gz";
    sha256 = "02d3124adc7e48501cf1e3d4edbd124a263b98c180b24983ecf36b56a6ae8d93";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf interactive-markers pluginlib ogre1_9 map-msgs tf image-transport eigen nav-msgs sensor-msgs urdfdom-headers assimp resource-retriever cmake-modules roslib libyamlcpp rosbag rosconsole message-filters std-msgs std-srvs roscpp rospy python-qt-binding libGLU laser-geometry qt5.qtbase libGL tinyxml visualization-msgs ];
  propagatedBuildInputs = [ geometry-msgs urdf interactive-markers pluginlib ogre1_9 map-msgs tf image-transport eigen nav-msgs sensor-msgs urdfdom-headers assimp resource-retriever roslib libyamlcpp rosbag rosconsole media-export message-filters std-msgs std-srvs roscpp rospy python-qt-binding libGLU laser-geometry qt5.qtbase libGL tinyxml visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
