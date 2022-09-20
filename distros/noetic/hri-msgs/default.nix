
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-hri-msgs";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_msgs-release/archive/release/noetic/hri_msgs/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "012eff5f101838a4d45b5a899479e36cca55f2a971e10d9c16b9ffbb0ddcb026";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and action definitions useful for Human-Robot Interaction'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
