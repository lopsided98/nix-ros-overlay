
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cmake-modules, geometry-msgs, catkin, tinyxml, roscpp, gazebo-dev, rosgraph-msgs, roslib, dynamic-reconfigure, std-msgs, tf, gazebo-msgs }:
buildRosPackage {
  pname = "ros-lunar-gazebo-ros";
  version = "2.7.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_ros/2.7.6-0.tar.gz;
    sha256 = "078fcd6233b7029a3a83a5e0e7804b99b4780f786cef4a224d61b53000f1eb6c";
  };

  buildInputs = [ std-srvs cmake-modules geometry-msgs tinyxml roscpp gazebo-dev rosgraph-msgs roslib dynamic-reconfigure std-msgs tf gazebo-msgs ];
  propagatedBuildInputs = [ std-srvs geometry-msgs tf tinyxml gazebo-dev rosgraph-msgs roslib dynamic-reconfigure std-msgs roscpp gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS plugins that offer message and service publishers for interfacing with <a href="http://gazebosim.org">Gazebo</a> through ROS.
    Formally simulator_gazebo/gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
