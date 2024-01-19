
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation }:
buildRosPackage {
  pname = "ros-noetic-hri-actions-msgs";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_actions_msgs-release/archive/release/noetic/hri_actions_msgs/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "50ea4d9a33d3223d1e129e78de1bae0560abe2422d23b2ea6744d413db04dfd9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definitions useful for Human-Robot Interaction'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
