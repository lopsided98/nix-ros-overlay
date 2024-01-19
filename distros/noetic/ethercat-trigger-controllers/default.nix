
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, libtool, message-generation, message-runtime, pluginlib, pr2-controller-interface, realtime-tools, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ethercat-trigger-controllers";
  version = "1.10.18-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/noetic/ethercat_trigger_controllers/1.10.18-1.tar.gz";
    name = "1.10.18-1.tar.gz";
    sha256 = "76eadb510379a0887d67d78299cadf476fd5f4c91465b696b132a551d06ff51d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs libtool message-runtime pluginlib pr2-controller-interface realtime-tools roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers to operate the digital output of the motor controller
    boards and the projector board. This package has not been reviewed and
    should be considered unstable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
