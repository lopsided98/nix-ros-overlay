
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, gazebo-dev, gazebo-msgs, geometry-msgs, python, roscpp, rosgraph-msgs, roslib, std-msgs, std-srvs, tf, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-gazebo-ros";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_ros/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "e11f96ea6b51f1869770a141e130245d88a166f608935966083044859ffe1d6a";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ dynamic-reconfigure gazebo-dev gazebo-msgs geometry-msgs python roscpp rosgraph-msgs roslib std-msgs std-srvs tf tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS plugins that offer message and service publishers for interfacing with <a href="http://gazebosim.org">Gazebo</a> through ROS.
    Formally simulator_gazebo/gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
