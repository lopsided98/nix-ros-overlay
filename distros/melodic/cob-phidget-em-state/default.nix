
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-phidget-em-state";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidget_em_state/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "6a36e2834db47a408130e9d94a17b6774100f5088e46ba7d3000162c28deda70";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_em_state package publishes emergency state based on phidgets signals.'';
    license = with lib.licenses; [ asl20 ];
  };
}
