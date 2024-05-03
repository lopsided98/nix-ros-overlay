
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, catkin, cmake-modules, eigen, geometry-msgs, image-transport, interactive-markers, laser-geometry, libGL, libGLU, map-msgs, media-export, message-filters, message-generation, message-runtime, nav-msgs, ogre1_9, pluginlib, python-qt-binding, qt5, resource-retriever, rosconsole, roscpp, roslib, rospy, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, tinyxml-2, urdf, urdfdom, urdfdom-headers, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-rviz";
  version = "1.14.22-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rviz-release/archive/release/noetic/rviz/1.14.22-1.tar.gz";
    name = "1.14.22-1.tar.gz";
    sha256 = "4c845f2708c341d54a0d6c7450f6c19d0065151384c0bc51665bf38f70aeadef";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen message-generation urdfdom urdfdom-headers ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ assimp geometry-msgs image-transport interactive-markers laser-geometry libGL libGLU map-msgs media-export message-filters message-runtime nav-msgs ogre1_9 pluginlib python-qt-binding qt5.qtbase resource-retriever rosconsole roscpp roslib rospy sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros tinyxml-2 urdf visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "3D visualization tool for ROS.";
    license = with lib.licenses; [ bsdOriginal "Creative-Commons" ];
  };
}
