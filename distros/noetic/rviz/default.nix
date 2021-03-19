
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, catkin, cmake-modules, eigen, geometry-msgs, image-transport, interactive-markers, laser-geometry, libGL, libGLU, libyamlcpp, map-msgs, media-export, message-filters, message-generation, message-runtime, nav-msgs, ogre1_9, pluginlib, python-qt-binding, qt5, resource-retriever, rosbag, rosconsole, roscpp, roslib, rospy, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, tinyxml-2, urdf, urdfdom, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rviz";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rviz-release/archive/release/noetic/rviz/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "d32a1a35764906a7cc12782d0cf5d057e23ddd337380ea8a6cb372de80184d51";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen message-generation urdfdom urdfdom-headers ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ assimp geometry-msgs image-transport interactive-markers laser-geometry libGL libGLU libyamlcpp map-msgs media-export message-filters message-runtime nav-msgs ogre1_9 pluginlib python-qt-binding qt5.qtbase resource-retriever rosbag rosconsole roscpp roslib rospy sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros tinyxml-2 urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
