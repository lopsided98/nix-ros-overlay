
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, joint-state-controller, diff-drive-controller, hector-gazebo-plugins, catkin, roscpp, nav-msgs, urdf, interactive-marker-twist-server, std-msgs, roslaunch, tf, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-multi-jackal-control";
  version = "0.0.5";

  src = fetchurl {
    url = https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/multi_jackal_control/0.0.5-0.tar.gz;
    sha256 = "675f68107a807a168a9ffcd643688016409313fa28f139e700c416b309778250";
  };

  propagatedBuildInputs = [ controller-manager joint-state-controller diff-drive-controller hector-gazebo-plugins roscpp nav-msgs urdf interactive-marker-twist-server std-msgs tf xacro gazebo-ros-control ];
  nativeBuildInputs = [ controller-manager joint-state-controller diff-drive-controller hector-gazebo-plugins catkin roscpp nav-msgs urdf interactive-marker-twist-server std-msgs roslaunch tf xacro gazebo-ros-control ];

  meta = {
    description = ''Creates the joint and velocity controllers.'';
    #license = lib.licenses.BSD;
  };
}
