
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-twist-mux-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/twist_mux_msgs-release/archive/release/noetic/twist_mux_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "782864dff4f4c569eab485e232f3e00785b6c7dc1b6dc1702f6492ab577b73de";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The twist_mux msgs and actions package'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
