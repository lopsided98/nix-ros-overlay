
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, checkerboard-detector, dynamic-tf-publisher, freenect-stack, gazebo-plugins, gazebo-ros, joint-state-publisher, nextage-gazebo, openni2-launch, robot-state-publisher, tf, turtlebot-description, urdf }:
buildRosPackage {
  pname = "ros-kinetic-nextage-calibration";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_calibration/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "4f3707e57a13a017c81b08678ed71bc5a9ba0248a99f72d4d684487e70a1ab04";
  };

  buildType = "catkin";
  checkInputs = [ nextage-gazebo ];
  propagatedBuildInputs = [ checkerboard-detector dynamic-tf-publisher freenect-stack gazebo-plugins gazebo-ros joint-state-publisher openni2-launch robot-state-publisher tf turtlebot-description urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides .launch files and other tools for
  calibrating the head-mount cameras to the NEXTAGE Open robot.
  As of version 0.7.15/March 2017, only Kinect/Xtion is capable (i.e. Ueye
  cameras, the ones the robot comes with on this head by default, are not yet
  handled).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
