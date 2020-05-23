
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation }:
buildRosPackage {
  pname = "ros-noetic-tf2-msgs";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_msgs/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "17d3ddf62466da7b1909fb6d4a8e231e8cfb9d385784f85b67c05b3ea26e1d7a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
