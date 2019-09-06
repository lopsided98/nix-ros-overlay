
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-plugins, gazebo-dev, gazebo-msgs }:
buildRosPackage {
  pname = "ros-melodic-gazebo-ros-pkgs";
  version = "2.8.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_ros_pkgs/2.8.4-0.tar.gz";
    name = "2.8.4-0.tar.gz";
    sha256 = "1a81d17b76e69f4d49adce9d778293f985f7eced56bada30bb6f78832d6a7c29";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
