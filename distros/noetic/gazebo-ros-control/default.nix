
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, joint-limits-interface, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-gazebo-ros-control";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_ros_control/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "0e862d58508c1bf22aaf47c26aae4f7233863ea8da4e6d1e9ac1e21bb527501d";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-dev ];
  propagatedBuildInputs = [ angles control-toolbox controller-manager gazebo-ros hardware-interface joint-limits-interface pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
