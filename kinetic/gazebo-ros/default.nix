
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cmake-modules, geometry-msgs, catkin, tinyxml, roscpp, gazebo-dev, rosgraph-msgs, roslib, dynamic-reconfigure, std-msgs, tf, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-ros";
  version = "2.5.18-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros/2.5.18-1.tar.gz;
    sha256 = "cd027c4cafa7dd8f2570af29c7782d19c33d8dca1251e96cc0cbcf2c4b9a63df";
  };

  buildInputs = [ std-srvs cmake-modules geometry-msgs tinyxml roscpp gazebo-dev rosgraph-msgs roslib dynamic-reconfigure std-msgs tf gazebo-msgs ];
  propagatedBuildInputs = [ std-srvs geometry-msgs tf tinyxml roscpp gazebo-dev rosgraph-msgs dynamic-reconfigure std-msgs roslib gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS plugins that offer message and service publishers for interfacing with <a href="http://gazebosim.org">Gazebo</a> through ROS.
    Formally simulator_gazebo/gazebo'';
    #license = lib.licenses.Apache 2.0;
  };
}
