
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, actionlib, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pheeno-ros";
  version = "0.1.1-r3";

  src = fetchurl {
    url = https://github.com/ACSLaboratory/pheeno_ros-release/archive/release/kinetic/pheeno_ros/0.1.1-3.tar.gz;
    sha256 = "9d165abb22eaf98d7893fcaf513823645576ad076115be5b4a285d193febaecc";
  };

  buildInputs = [ actionlib-msgs actionlib rospy std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs actionlib rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pheeno_ros package contains necessary files for run and control an individual Pheeno unit with ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
