
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-trajectory-msgs";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/trajectory_msgs/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "274cd3c31a5aa5c32a71d742064016164a7eb76502c5ba0511bd0ebeb7a1eb21";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package defines messages for defining robot trajectories. These messages are
    also the building blocks of most of the
    <a href=\"http://wiki.ros.org/control_msgs\">control_msgs</a> actions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
