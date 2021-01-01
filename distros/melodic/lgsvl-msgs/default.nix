
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-generation, message-runtime, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-lgsvl-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/lgsvl_msgs-release/archive/release/melodic/lgsvl_msgs/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "eb60036c61861db1e32eeebd107b1aac889dd4b31c898ab2871aa17ea2cf9513";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];

  meta = {
    description = ''Message definitions for interfacing with the LGSVL Simulator for ROS and ROS 2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
