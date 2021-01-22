
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-marker-msgs";
  version = "0.0.6";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/marker_msgs-release/archive/release/kinetic/marker_msgs/0.0.6-0.tar.gz";
    name = "0.0.6-0.tar.gz";
    sha256 = "5cc07cbb5fb0fcaa6f27a6d9f57cc7207eacb608d533f4bcdc5220e74995e378";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The marker_msgs package contains messages usable to setup a marker/fiducial system. 
    The package distinguishes between two types of messages. 
    First messages to describe the properties of a marker/fiducial detection system and the detected markers. 
    Secondly messages used to represent a map of markers/features with covariances as it would be produced by a SLAM system or published by a map server for self-localization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
