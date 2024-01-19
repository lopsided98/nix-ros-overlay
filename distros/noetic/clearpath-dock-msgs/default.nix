
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-dock-msgs";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_dock_msgs/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "a453f268fe2110884dd237d1a3650940514b1084a2156706047f7825618cf64e";
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
