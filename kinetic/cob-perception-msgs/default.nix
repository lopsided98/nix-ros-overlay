
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-perception-msgs";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_perception_msgs/0.6.13-0.tar.gz;
    sha256 = "ad912c51c6a8ba19a4ee192cece83e333181ba20caeaf351a2f1005c15c2436a";
  };

  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ message-generation std-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''This package contains common message type definitions for perception tasks.'';
    #license = lib.licenses.Apache 2.0;
  };
}
