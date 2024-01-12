
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, object-recognition-msgs, octomap-msgs, sensor-msgs, shape-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-msgs";
  version = "0.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_msgs-release/archive/release/noetic/moveit_msgs/0.11.4-1.tar.gz";
    name = "0.11.4-1.tar.gz";
    sha256 = "ee9b010332c606a8c0853cdcce502134fefca02e9e8fa8a7d91b8bc7011ea3a3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-generation message-runtime object-recognition-msgs octomap-msgs sensor-msgs shape-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and actions used by MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
