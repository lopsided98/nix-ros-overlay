
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nextage-gazebo, gazebo-ros, catkin, openni2-launch, checkerboard-detector, gazebo-plugins, dynamic-tf-publisher, urdf, robot-state-publisher, turtlebot-description, tf, joint-state-publisher, freenect-stack }:
buildRosPackage {
  pname = "ros-kinetic-nextage-calibration";
  version = "0.8.4";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_calibration/0.8.4-0.tar.gz;
    sha256 = "531f04f8ff752f1e242af41fe7d6183d334ea00b732ced44446fd0c8926e0641";
  };

  checkInputs = [ nextage-gazebo ];
  propagatedBuildInputs = [ gazebo-ros openni2-launch checkerboard-detector gazebo-plugins dynamic-tf-publisher urdf robot-state-publisher turtlebot-description tf joint-state-publisher freenect-stack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides .launch files and other tools for
  calibrating the head-mount cameras to the NEXTAGE Open robot.
  As of version 0.7.15/March 2017, only Kinect/Xtion is capable (i.e. Ueye
  cameras, the ones the robot comes with on this head by default, are not yet
  handled).'';
    #license = lib.licenses.BSD;
  };
}
