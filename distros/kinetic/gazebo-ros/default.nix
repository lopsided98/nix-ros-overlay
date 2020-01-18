
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, gazebo-dev, gazebo-msgs, geometry-msgs, roscpp, rosgraph-msgs, roslib, std-msgs, std-srvs, tf, tinyxml }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-ros";
  version = "2.5.19-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros/2.5.19-1.tar.gz";
    name = "2.5.19-1.tar.gz";
    sha256 = "371f707e9a9428d0ed39fe09cf0fe611508d71babd295e50d64ffe7fa5cd1250";
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
