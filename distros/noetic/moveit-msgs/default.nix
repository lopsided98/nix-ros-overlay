
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, object-recognition-msgs, octomap-msgs, sensor-msgs, shape-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-msgs";
  version = "0.11.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_msgs-release/archive/release/noetic/moveit_msgs/0.11.3-1.tar.gz";
    name = "0.11.3-1.tar.gz";
    sha256 = "a29833eeccf6ea605bd0f7c8081f37b0edbb8c9d56854a73f5ef68a808d3f19a";
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
