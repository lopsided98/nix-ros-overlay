
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-ign-bridge, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-noetic-ros-ign";
  version = "0.111.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_ign-release/archive/release/noetic/ros_ign/0.111.0-1.tar.gz";
    name = "0.111.0-1.tar.gz";
    sha256 = "21beeed679e05614595d381e55753bb6de4596921da96d621f53fb3c018e64ff";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ros-ign-bridge ros-ign-gazebo-demos ros-ign-image ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS with <a href="https://ignitionrobotics.org">Ignition</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
