
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, pr2-controller-interface, realtime-tools, catkin, libtool, message-generation, message-runtime, rospy, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-ethercat-trigger-controllers";
  version = "1.10.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/ethercat_trigger_controllers/1.10.15-0.tar.gz;
    sha256 = "dfc4842857acfc88cd90fb7dfb0f56718b9b392198fe678362584b33abef39fb";
  };

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
