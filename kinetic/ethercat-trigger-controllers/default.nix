
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, diagnostic-msgs, pluginlib, std-msgs, libtool, catkin, pr2-controller-interface, realtime-tools, rospy, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-ethercat-trigger-controllers";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/ethercat_trigger_controllers/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "175a1a89e8b7a4d9e17d32b173fa19621baa077d21c46eacff1eec060ac69b6f";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs pluginlib libtool std-msgs pr2-controller-interface realtime-tools roscpp message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs pluginlib libtool std-msgs pr2-controller-interface realtime-tools rospy roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers to operate the digital output of the motor controller
    boards and the projector board. This package has not been reviewed and
    should be considered unstable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
