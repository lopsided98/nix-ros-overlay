
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, rospy, tf, geometry-msgs, image-transport, message-filters, urdfdom-headers, libGL, roslib, std-srvs, ogre1_9, rosbag, catkin, nav-msgs, urdf, resource-retriever, std-msgs, libGLU, tinyxml-2, laser-geometry, python-qt-binding, roscpp, visualization-msgs, cmake-modules, pluginlib, libyamlcpp, sensor-msgs, assimp, urdfdom, rostest, qt5, interactive-markers, eigen, media-export, rosunit, map-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz";
  version = "1.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/rviz-release/archive/release/melodic/rviz/1.13.3-0.tar.gz;
    sha256 = "1d30b85b375f6c15a25f690e3ac296f19527fd1740e85fa26ba059d5f8fd0bda";
  };

  buildInputs = [ rosconsole rospy tf geometry-msgs image-transport message-filters qt5.qtbase urdfdom-headers libGL roslib std-srvs ogre1_9 rosbag nav-msgs urdf resource-retriever std-msgs libGLU tinyxml-2 laser-geometry python-qt-binding roscpp visualization-msgs cmake-modules pluginlib libyamlcpp sensor-msgs assimp urdfdom interactive-markers eigen map-msgs ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ rosconsole rospy tf geometry-msgs image-transport message-filters qt5.qtbase libGL roslib std-srvs ogre1_9 rosbag nav-msgs urdf resource-retriever std-msgs libGLU tinyxml-2 laser-geometry visualization-msgs python-qt-binding roscpp pluginlib libyamlcpp sensor-msgs assimp interactive-markers media-export map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
