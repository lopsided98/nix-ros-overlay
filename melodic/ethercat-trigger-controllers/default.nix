
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, pr2-controller-interface, realtime-tools, catkin, libtool, message-generation, message-runtime, rospy, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ethercat-trigger-controllers";
  version = "1.10.15-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/ethercat_trigger_controllers/1.10.15-1.tar.gz;
    sha256 = "a90e00f501dc42e5a50347e28237683a31cd2d959a2fad379d5bda7706de9aed";
  };

  buildInputs = [ message-generation pluginlib pr2-controller-interface std-msgs realtime-tools roscpp libtool diagnostic-msgs ];
  propagatedBuildInputs = [ pluginlib pr2-controller-interface realtime-tools libtool message-runtime rospy std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers to operate the digital output of the motor controller
    boards and the projector board. This package has not been reviewed and
    should be considered unstable.'';
    #license = lib.licenses.BSD;
  };
}
