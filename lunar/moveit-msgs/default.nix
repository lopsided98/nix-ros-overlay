
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, actionlib-msgs, trajectory-msgs, sensor-msgs, catkin, octomap-msgs, message-generation, message-runtime, object-recognition-msgs, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-moveit-msgs";
  version = "0.9.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit_msgs-release/archive/release/lunar/moveit_msgs/0.9.1-0.tar.gz;
    sha256 = "fe34a6b249503009b23fd79a5e129edac6b0580d218751854b9b11ca909765e5";
  };

  buildInputs = [ shape-msgs actionlib-msgs trajectory-msgs sensor-msgs octomap-msgs message-generation object-recognition-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs actionlib-msgs trajectory-msgs sensor-msgs octomap-msgs message-runtime object-recognition-msgs std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and actions used by MoveIt'';
    #license = lib.licenses.BSD;
  };
}
