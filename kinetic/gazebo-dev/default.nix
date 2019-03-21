
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazeboSimulator }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-dev";
  version = "2.5.18-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_dev/2.5.18-1.tar.gz;
    sha256 = "f2528405887b4492a95b21d8aecb423b47ab5b52f31054c716072d869b753ef6";
  };

  propagatedBuildInputs = [ gazeboSimulator.gazebo gazeboSimulator.gazebo7 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    #license = lib.licenses.Apache 2.0;
  };
}
