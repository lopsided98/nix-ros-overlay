
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marker-msgs";
  version = "0.0.6-r7";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/marker_msgs-release/archive/release/noetic/marker_msgs/0.0.6-7.tar.gz";
    name = "0.0.6-7.tar.gz";
    sha256 = "5e6d538a7981661af4e75752a3a3d254b8f6f9afb79a7f3c5b6a55f1f38b2bce";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
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
