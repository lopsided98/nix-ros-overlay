
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, actionlib-msgs, trajectory-msgs, sensor-msgs, catkin, octomap-msgs, message-generation, message-runtime, object-recognition-msgs, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-moveit-msgs";
  version = "0.9.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit_msgs-release/archive/release/kinetic/moveit_msgs/0.9.1-0.tar.gz;
    sha256 = "2e486cd37f7d9fa293971c2aeb8bad0ce8862d954c64a3b02a0cf5a119a960a1";
  };

  buildInputs = [ shape-msgs actionlib-msgs trajectory-msgs sensor-msgs octomap-msgs message-generation object-recognition-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs actionlib-msgs trajectory-msgs sensor-msgs octomap-msgs message-runtime object-recognition-msgs std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and actions used by MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
