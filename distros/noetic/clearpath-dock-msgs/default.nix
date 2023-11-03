
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-dock-msgs";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_dock_msgs/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "2884ca14f2225a0ac0bc3d09dd6a37f3cc734129ad53c56c8db82279766a42e1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package containing the message definitions for the Clearpath Robotics OutdoorNav dock module.'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
