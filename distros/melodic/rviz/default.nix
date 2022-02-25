
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, catkin, cmake-modules, eigen, geometry-msgs, image-transport, interactive-markers, laser-geometry, libGL, libGLU, libyamlcpp, map-msgs, media-export, message-filters, message-generation, message-runtime, nav-msgs, ogre1_9, pluginlib, python-qt-binding, qt5, resource-retriever, rosconsole, roscpp, roslib, rospy, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf, tinyxml-2, urdf, urdfdom, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz";
  version = "1.13.24-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rviz-release/archive/release/melodic/rviz/1.13.24-1.tar.gz";
    name = "1.13.24-1.tar.gz";
    sha256 = "06e0d574a662310e1590864b338785434720b6f44fad84d9036ede48425a25ad";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen message-generation urdfdom urdfdom-headers ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ assimp geometry-msgs image-transport interactive-markers laser-geometry libGL libGLU libyamlcpp map-msgs media-export message-filters message-runtime nav-msgs ogre1_9 pluginlib python-qt-binding qt5.qtbase resource-retriever rosconsole roscpp roslib rospy sensor-msgs std-msgs std-srvs tf tinyxml-2 urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
