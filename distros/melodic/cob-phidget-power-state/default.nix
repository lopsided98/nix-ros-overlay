
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-phidget-power-state";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidget_power_state/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "71b237c188db28111626e06356730b187c1a45387a2502f3ccc7d2ebe4ac90c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_power_state package publishes power state based on phidgets signals.'';
    license = with lib.licenses; [ asl20 ];
  };
}
