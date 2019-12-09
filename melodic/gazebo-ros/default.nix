
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, std-msgs, std-srvs, tf, cmake-modules, roslib, tinyxml, catkin, gazebo-msgs, python, roscpp, rosgraph-msgs, gazebo-dev }:
buildRosPackage {
  pname = "ros-melodic-gazebo-ros";
  version = "2.8.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_ros/2.8.4-0.tar.gz";
    name = "2.8.4-0.tar.gz";
    sha256 = "fde5c96dfbdfcd8550ae4b731d199348b50955157f0bc114f754c5a55170ca8a";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure std-msgs std-srvs tf roslib cmake-modules tinyxml gazebo-msgs roscpp rosgraph-msgs gazebo-dev ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure std-msgs std-srvs tf roslib tinyxml gazebo-msgs python roscpp rosgraph-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS plugins that offer message and service publishers for interfacing with <a href="http://gazebosim.org">Gazebo</a> through ROS.
    Formally simulator_gazebo/gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
