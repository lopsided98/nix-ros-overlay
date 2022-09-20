
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-phidget-power-state";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidget_power_state/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "f6c71dab345af2aaaa0410b1525175fecee3986cb0816cbced54536bad66d47a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_power_state package publishes power state based on phidgets signals.'';
    license = with lib.licenses; [ asl20 ];
  };
}
