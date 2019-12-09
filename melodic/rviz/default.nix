
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, interactive-markers, pluginlib, ogre1_9, map-msgs, tf, rosunit, image-transport, eigen, nav-msgs, rostest, sensor-msgs, urdfdom-headers, assimp, resource-retriever, cmake-modules, roslib, libyamlcpp, qt5, rosbag, rosconsole, media-export, message-filters, std-msgs, std-srvs, catkin, roscpp, rospy, python-qt-binding, urdfdom, libGLU, laser-geometry, libGL, visualization-msgs, tinyxml-2 }:
buildRosPackage {
  pname = "ros-melodic-rviz";
  version = "1.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rviz-release/archive/release/melodic/rviz/1.13.6-1.tar.gz";
    name = "1.13.6-1.tar.gz";
    sha256 = "6ac863b8fd78efa22eb2b7d89de66bcefbfd40f90a0d4e356ac92a52adc82870";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf interactive-markers pluginlib ogre1_9 map-msgs tf image-transport eigen nav-msgs sensor-msgs urdfdom-headers assimp resource-retriever cmake-modules roslib libyamlcpp rosbag rosconsole message-filters std-msgs std-srvs roscpp rospy python-qt-binding urdfdom libGLU laser-geometry qt5.qtbase libGL visualization-msgs tinyxml-2 ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs urdf interactive-markers pluginlib ogre1_9 map-msgs tf image-transport nav-msgs sensor-msgs assimp resource-retriever roslib libyamlcpp rosbag rosconsole media-export message-filters std-msgs std-srvs roscpp rospy python-qt-binding libGLU laser-geometry qt5.qtbase libGL visualization-msgs tinyxml-2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
