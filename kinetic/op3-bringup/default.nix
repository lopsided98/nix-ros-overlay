
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-description, usb-cam, op3-manager, catkin, rviz, robot-state-publisher, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-op3-bringup";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_demo-release/archive/release/kinetic/op3_bringup/0.1.0-0.tar.gz;
    sha256 = "7fc0395806cc37b0fbadb8df4e3c30c775b50cc5157c457e25d48d67ea917354";
  };

  propagatedBuildInputs = [ rviz op3-description robot-state-publisher op3-manager usb-cam joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a demo for first time users.
    There is an example in the demo where you can run and visualize the robot.'';
    #license = lib.licenses.Apache 2.0;
  };
}
