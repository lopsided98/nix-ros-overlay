
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation }:
buildRosPackage {
  pname = "ros-noetic-tf2-msgs";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_msgs/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "b0dc57bf3b2dc84de60b8ac76c3d8c136a75b9808cbeec0d8184cbf15ac504a2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
