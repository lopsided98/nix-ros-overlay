
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo, gazebo-ros, gazebo-ros-control, hardware-interface, joint-limits-interface, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-gazebo-ros-control-select-joints";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/gazebo_ros_control_select_joints-release/archive/release/noetic/gazebo_ros_control_select_joints/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "49ee976c4565b47588ca0ac9acabd261902629be396bf77020a26bb5b0572a00";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles control-toolbox controller-manager gazebo gazebo-ros gazebo-ros-control hardware-interface joint-limits-interface pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_contrl_select_joints'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
