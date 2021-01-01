
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, catkin, cmake-modules, eigen, geometry-msgs, image-transport, interactive-markers, laser-geometry, libGL, libGLU, libyamlcpp, map-msgs, media-export, message-filters, nav-msgs, ogre1_9, pluginlib, python-qt-binding, qt5, resource-retriever, rosbag, rosconsole, roscpp, roslib, rospy, sensor-msgs, std-msgs, std-srvs, tf, tinyxml, urdf, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rviz";
  version = "1.12.17";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rviz-release/archive/release/kinetic/rviz/1.12.17-0.tar.gz";
    name = "1.12.17-0.tar.gz";
    sha256 = "02d3124adc7e48501cf1e3d4edbd124a263b98c180b24983ecf36b56a6ae8d93";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ assimp eigen geometry-msgs image-transport interactive-markers laser-geometry libGL libGLU libyamlcpp map-msgs media-export message-filters nav-msgs ogre1_9 pluginlib python-qt-binding qt5.qtbase resource-retriever rosbag rosconsole roscpp roslib rospy sensor-msgs std-msgs std-srvs tf tinyxml urdf urdfdom-headers visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
