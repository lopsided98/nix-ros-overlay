
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-phidget-em-state";
  version = "0.7.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_phidget_em_state/0.7.15-1.tar.gz";
    name = "0.7.15-1.tar.gz";
    sha256 = "6926b7d3d19a711990720e5d3a9f2cba233c40c9e4a6f875321eba1aa085b27a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_em_state package publishes emergency state based on phidgets signals.'';
    license = with lib.licenses; [ asl20 ];
  };
}
