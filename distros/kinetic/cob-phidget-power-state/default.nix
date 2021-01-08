
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidget-power-state";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidget_power_state/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "518349299e7f1cc4bb09f609c39c97cfa0da4c7d7b2f13b64e2be91ff53bd78b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_power_state package publishes power state based on phidgets signals.'';
    license = with lib.licenses; [ asl20 ];
  };
}
