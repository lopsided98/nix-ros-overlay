
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-perception-msgs";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_perception_msgs/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "c46c5760c1ea6f9494679c6673872abac8b25e4ea6b4f698263eacf2106cabaa";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains common message type definitions for perception tasks.'';
    license = with lib.licenses; [ asl20 ];
  };
}
