
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-perception-msgs";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_perception_msgs/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "f0c8e8e7dc0f98f089f97101695d493772a9996b037b1f59e4c3e553a50d6ae1";
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
