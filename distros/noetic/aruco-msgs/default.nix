
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-aruco-msgs";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/noetic/aruco_msgs/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "8cc41f88a983ea32a2cc48288dc5e2ea2edba95b6c85911f7c20ebbf3ca48a39";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The aruco_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
