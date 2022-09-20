
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/melodic/vesc_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c27b9c954ea768983a2c50138c508b083af5d46d7e8d4907b7c0441037c5eb94";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for the Vedder VESC open source motor controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
