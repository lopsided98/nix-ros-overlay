
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, actionlib-msgs, sensor-msgs, catkin, roscpp, message-generation, actionlib, message-runtime, rospy, std-msgs, diagnostic-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-light";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_light/0.6.14-1.tar.gz;
    sha256 = "2640ad18adbd87c3d35b2c3030c0c7e93c5ad6bb412dc4cab41bfe950e9bd8d4";
  };

  buildInputs = [ boost actionlib-msgs sensor-msgs roscpp message-generation actionlib std-msgs diagnostic-msgs visualization-msgs ];
  propagatedBuildInputs = [ boost actionlib-msgs sensor-msgs rospy message-runtime visualization-msgs actionlib std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains scripts to operate the LED lights on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
