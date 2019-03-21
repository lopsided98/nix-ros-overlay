
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, tinyxml, rospy, tf, geometry-msgs, image-transport, message-filters, urdfdom-headers, roslib, libGL, std-srvs, ogre1_9, rosbag, catkin, nav-msgs, urdf, resource-retriever, std-msgs, libGLU, laser-geometry, visualization-msgs, python-qt-binding, roscpp, pluginlib, cmake-modules, libyamlcpp, sensor-msgs, assimp, qt5, interactive-markers, eigen, media-export, map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rviz";
  version = "1.12.17";

  src = fetchurl {
    url = https://github.com/ros-gbp/rviz-release/archive/release/kinetic/rviz/1.12.17-0.tar.gz;
    sha256 = "02d3124adc7e48501cf1e3d4edbd124a263b98c180b24983ecf36b56a6ae8d93";
  };

  propagatedBuildInputs = [ std-srvs rosconsole ogre1_9 rosbag tinyxml roslib nav-msgs urdf resource-retriever rospy std-msgs libGLU laser-geometry visualization-msgs tf python-qt-binding roscpp geometry-msgs pluginlib libyamlcpp image-transport sensor-msgs message-filters qt5.qtbase assimp urdfdom-headers interactive-markers eigen media-export libGL map-msgs ];
  nativeBuildInputs = [ std-srvs rosconsole ogre1_9 rosbag catkin tinyxml roslib nav-msgs urdf resource-retriever rospy std-msgs libGLU laser-geometry tf python-qt-binding roscpp visualization-msgs geometry-msgs cmake-modules pluginlib libyamlcpp image-transport sensor-msgs message-filters qt5.qtbase assimp urdfdom-headers interactive-markers eigen libGL map-msgs ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    #license = lib.licenses.BSD;
  };
}
