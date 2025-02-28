
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, gazebo-dev, gazebo-msgs, geometry-msgs, python, roscpp, rosgraph-msgs, roslib, std-msgs, std-srvs, tf, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-gazebo-ros";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_ros/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "60ff0273a9bb668c72d310f44b7b2bf736218b1a831d88d747a865c2a65a2216";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ dynamic-reconfigure gazebo-dev gazebo-msgs geometry-msgs python roscpp rosgraph-msgs roslib std-msgs std-srvs tf tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Provides ROS plugins that offer message and service publishers for interfacing with <a href=\"http://gazebosim.org\">Gazebo</a> through ROS.
    Formally simulator_gazebo/gazebo";
    license = with lib.licenses; [ asl20 ];
  };
}
