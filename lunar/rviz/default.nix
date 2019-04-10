
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, tinyxml, rospy, tf, geometry-msgs, image-transport, message-filters, urdfdom-headers, roslib, libGL, std-srvs, ogre1_9, rosbag, catkin, nav-msgs, urdf, resource-retriever, std-msgs, libGLU, laser-geometry, python-qt-binding, roscpp, visualization-msgs, cmake-modules, pluginlib, libyamlcpp, sensor-msgs, assimp, qt5, interactive-markers, eigen, media-export, map-msgs }:
buildRosPackage {
  pname = "ros-lunar-rviz";
  version = "1.12.16";

  src = fetchurl {
    url = https://github.com/ros-gbp/rviz-release/archive/release/lunar/rviz/1.12.16-0.tar.gz;
    sha256 = "47e11fc10d43777610523c157116e74e6afc08fcc9ab53954b818f9336dd719d";
  };

  buildInputs = [ std-srvs rosconsole ogre1_9 rosbag tinyxml roslib nav-msgs urdf resource-retriever rospy std-msgs libGLU laser-geometry tf python-qt-binding roscpp visualization-msgs geometry-msgs cmake-modules pluginlib libyamlcpp image-transport sensor-msgs message-filters qt5.qtbase assimp urdfdom-headers interactive-markers eigen libGL map-msgs ];
  propagatedBuildInputs = [ std-srvs rosconsole ogre1_9 rosbag tinyxml roslib nav-msgs urdf resource-retriever rospy std-msgs libGLU laser-geometry visualization-msgs tf python-qt-binding roscpp geometry-msgs pluginlib libyamlcpp image-transport sensor-msgs message-filters qt5.qtbase assimp urdfdom-headers interactive-markers eigen media-export libGL map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    #license = lib.licenses.BSD;
  };
}
