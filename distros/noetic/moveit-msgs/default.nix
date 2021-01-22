
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, object-recognition-msgs, octomap-msgs, sensor-msgs, shape-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-msgs";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_msgs-release/archive/release/noetic/moveit_msgs/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "66809976ac82cf8a3cc92091416497ab86ce48bfba5c8511c60e05c0ef1cb0cc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-generation message-runtime object-recognition-msgs octomap-msgs sensor-msgs shape-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and actions used by MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
