
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, std-msgs, actionlib, catkin, actionlib-msgs, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-pheeno-ros";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ACSLaboratory/pheeno_ros-release/archive/release/kinetic/pheeno_ros/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "9d165abb22eaf98d7893fcaf513823645576ad076115be5b4a285d193febaecc";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs actionlib actionlib-msgs roscpp rospy ];
  propagatedBuildInputs = [ geometry-msgs std-msgs actionlib actionlib-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pheeno_ros package contains necessary files for run and control an individual Pheeno unit with ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
