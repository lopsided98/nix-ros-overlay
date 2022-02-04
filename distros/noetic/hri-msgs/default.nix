
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-hri-msgs";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_msgs-release/archive/release/noetic/hri_msgs/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "051e170ce939ac91a41085d34dff349c2ba0e08e77baedbf86e995614ec0d30e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and action definitions useful for Human-Robot Interaction'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
