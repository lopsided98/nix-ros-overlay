
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation }:
buildRosPackage {
  pname = "ros-noetic-tf2-msgs";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_msgs/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "26d9f2b5c53eb51b825765525482bc50a92ddc41ad6a9bfb87f0b3f661304348";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "tf2_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
