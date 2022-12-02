
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-phidget-power-state";
  version = "0.7.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_phidget_power_state/0.7.14-1.tar.gz";
    name = "0.7.14-1.tar.gz";
    sha256 = "395047888e44c9a50a2de37d87a362eabb27251b86b2814e5d42787e61410986";
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
