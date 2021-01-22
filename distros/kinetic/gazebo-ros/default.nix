
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, gazebo-dev, gazebo-msgs, geometry-msgs, roscpp, rosgraph-msgs, roslib, std-msgs, std-srvs, tf, tinyxml }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-ros";
  version = "2.5.20-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros/2.5.20-1.tar.gz";
    name = "2.5.20-1.tar.gz";
    sha256 = "d50f8d5eeaa4d673f60bf510167f36381238fa9ccddd8a60ba5daf8e91ae34df";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ dynamic-reconfigure gazebo-dev gazebo-msgs geometry-msgs roscpp rosgraph-msgs roslib std-msgs std-srvs tf tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS plugins that offer message and service publishers for interfacing with <a href="http://gazebosim.org">Gazebo</a> through ROS.
    Formally simulator_gazebo/gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
