
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-msgs, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-gazebo-ros-pkgs";
  version = "2.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_ros_pkgs/2.8.6-1.tar.gz";
    name = "2.8.6-1.tar.gz";
    sha256 = "1726df1903a6b0db65c91eb830df5e7e0df4cc0e5a69a9d6e941a3c00fe1c2f6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
