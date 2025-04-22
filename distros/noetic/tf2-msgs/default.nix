
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation }:
buildRosPackage {
  pname = "ros-noetic-tf2-msgs";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_msgs/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "6175b6b143e93d6e481d04adfc1d649bdcea0aba6612fc8d908818a28a4ff0d6";
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
