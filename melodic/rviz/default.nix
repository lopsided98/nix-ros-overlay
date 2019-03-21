
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, rospy, tf, geometry-msgs, image-transport, message-filters, urdfdom-headers, libGL, roslib, std-srvs, ogre1_9, rosbag, catkin, nav-msgs, urdf, resource-retriever, std-msgs, tinyxml-2, laser-geometry, visualization-msgs, python-qt-binding, roscpp, pluginlib, cmake-modules, libyamlcpp, sensor-msgs, assimp, urdfdom, rostest, qt5, interactive-markers, eigen, media-export, rosunit, map-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz";
  version = "1.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/rviz-release/archive/release/melodic/rviz/1.13.3-0.tar.gz;
    sha256 = "1d30b85b375f6c15a25f690e3ac296f19527fd1740e85fa26ba059d5f8fd0bda";
  };

  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ std-srvs rosconsole ogre1_9 rosbag roslib nav-msgs urdf resource-retriever rospy std-msgs tinyxml-2 laser-geometry visualization-msgs tf python-qt-binding roscpp geometry-msgs pluginlib libyamlcpp image-transport sensor-msgs message-filters qt5.qtbase assimp interactive-markers media-export libGL map-msgs ];
  nativeBuildInputs = [ std-srvs rosconsole ogre1_9 rosbag catkin roslib nav-msgs urdf resource-retriever rospy std-msgs tinyxml-2 laser-geometry tf python-qt-binding roscpp visualization-msgs geometry-msgs cmake-modules pluginlib libyamlcpp image-transport sensor-msgs message-filters qt5.qtbase assimp urdfdom urdfdom-headers interactive-markers eigen libGL map-msgs ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    #license = lib.licenses.BSD;
  };
}
