
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-perception-msgs";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_perception_msgs/0.6.14-1.tar.gz;
    sha256 = "8a7949c06a644ee1735b4366abafe7455276f6aff13066b349d2a4ae8e849cb1";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains common message type definitions for perception tasks.'';
    license = with lib.licenses; [ asl20 ];
  };
}
