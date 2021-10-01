
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, catkin, cmake-modules, eigen, geometry-msgs, image-transport, interactive-markers, laser-geometry, libGL, libGLU, libyamlcpp, map-msgs, media-export, message-filters, message-generation, message-runtime, nav-msgs, ogre1_9, pluginlib, python-qt-binding, qt5, resource-retriever, rosbag, rosconsole, roscpp, roslib, rospy, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf, tinyxml-2, urdf, urdfdom, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz";
  version = "1.13.20-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rviz-release/archive/release/melodic/rviz/1.13.20-1.tar.gz";
    name = "1.13.20-1.tar.gz";
    sha256 = "5ae39f7f2e81ba2d5b23f00c8b26a599d4a8b294e9cbee7dfbd7ac9a11e29e0d";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen message-generation urdfdom urdfdom-headers ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ assimp geometry-msgs image-transport interactive-markers laser-geometry libGL libGLU libyamlcpp map-msgs media-export message-filters message-runtime nav-msgs ogre1_9 pluginlib python-qt-binding qt5.qtbase resource-retriever rosbag rosconsole roscpp roslib rospy sensor-msgs std-msgs std-srvs tf tinyxml-2 urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
