
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazeboSimulator }:
buildRosPackage {
  pname = "ros-melodic-gazebo-dev";
  version = "2.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_dev/2.8.6-1.tar.gz";
    name = "2.8.6-1.tar.gz";
    sha256 = "8d841ef18dab02cf584a0b7d85226cf6b5f529aaf8ee3597dac4206fd3472aeb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazeboSimulator.gazebo9 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
