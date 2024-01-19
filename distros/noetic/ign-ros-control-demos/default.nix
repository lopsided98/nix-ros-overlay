
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, ign-ros-control, joint-state-controller, joint-state-publisher, position-controllers, python3Packages, ros-ign-gazebo, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-noetic-ign-ros-control-demos";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ign_ros_control-release/archive/release/noetic/ign_ros_control_demos/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "34e65328c8fd74ad40ba8e29b8ce4a4c0ba91a40b8768707f479b95aec5fe3fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ effort-controllers ign-ros-control joint-state-controller joint-state-publisher position-controllers ros-ign-gazebo velocity-controllers xacro ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Ignition ros_control package demos.'';
    license = with lib.licenses; [ asl20 ];
  };
}
