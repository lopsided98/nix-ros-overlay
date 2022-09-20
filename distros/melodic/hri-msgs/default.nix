
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-hri-msgs";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_msgs-release/archive/release/melodic/hri_msgs/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "38e6797d23d882d009dba699e06459a65efe381cebba9f18d619a92f1a8f26ef";
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
