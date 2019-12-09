
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, urdf, hector-gazebo-plugins, std-msgs, roslaunch, tf, catkin, interactive-marker-twist-server, diff-drive-controller, gazebo-ros-control, roscpp, nav-msgs, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-multi-jackal-control";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/multi_jackal_control/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "675f68107a807a168a9ffcd643688016409313fa28f139e700c416b309778250";
  };

  buildType = "catkin";
  buildInputs = [ xacro controller-manager urdf hector-gazebo-plugins std-msgs roslaunch tf interactive-marker-twist-server diff-drive-controller gazebo-ros-control roscpp nav-msgs joint-state-controller ];
  propagatedBuildInputs = [ xacro controller-manager urdf hector-gazebo-plugins std-msgs tf interactive-marker-twist-server diff-drive-controller gazebo-ros-control roscpp nav-msgs joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Creates the joint and velocity controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
