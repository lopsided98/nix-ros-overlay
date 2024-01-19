
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-generation, message-runtime, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-lgsvl-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/lgsvl_msgs-release/archive/release/noetic/lgsvl_msgs/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "fa83ef1c1fb1ac692d5a1d5b3c41d341642103660b778950574332514033e124";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];

  meta = {
    description = ''Message definitions for interfacing with the LGSVL Simulator for ROS and ROS 2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
