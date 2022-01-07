
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-perception-msgs";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_perception_msgs/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "b101f92b078465cbbe5672f6022d1d64a6150e1d8468f65d4794e7fc8f44c71f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains common message type definitions for perception tasks.'';
    license = with lib.licenses; [ asl20 ];
  };
}
