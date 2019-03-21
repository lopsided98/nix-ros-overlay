
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-marker-msgs";
  version = "0.0.6";

  src = fetchurl {
    url = https://github.com/tuw-robotics/marker_msgs-release/archive/release/kinetic/marker_msgs/0.0.6-0.tar.gz;
    sha256 = "5cc07cbb5fb0fcaa6f27a6d9f57cc7207eacb608d533f4bcdc5220e74995e378";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''The marker_msgs package contains messages usable to setup a marker/fiducial system. 
    The package distinguishes between two types of messages. 
    First messages to describe the properties of a marker/fiducial detection system and the detected markers. 
    Secondly messages used to represent a map of markers/features with covariances as it would be produced by a SLAM system or published by a map server for self-localization.'';
    #license = lib.licenses.BSD;
  };
}
