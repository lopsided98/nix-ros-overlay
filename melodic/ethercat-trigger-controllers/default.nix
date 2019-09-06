
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, pr2-controller-interface, realtime-tools, catkin, libtool, message-generation, message-runtime, rospy, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ethercat-trigger-controllers";
  version = "1.10.17-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/ethercat_trigger_controllers/1.10.17-1.tar.gz";
    name = "1.10.17-1.tar.gz";
    sha256 = "d3630e54d263a3f14802f4b62710e4da4f21e78b6415d70fbd3b6a0b16b0ca5c";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib pr2-controller-interface realtime-tools libtool message-generation std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ pluginlib pr2-controller-interface realtime-tools libtool message-runtime rospy std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers to operate the digital output of the motor controller
    boards and the projector board. This package has not been reviewed and
    should be considered unstable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
