
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-phidget-em-state";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidget_em_state/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "e04e78b1130e6b2a25a905a94ee78719b4b3a37acc22763df165de4f9b842bc4";
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
