
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidget-power-state";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidget_power_state/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "c561c20d14f1228e4f026e1b03a959c05b9223ea88ea553a5accc443f5cfd954";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_power_state package'';
    license = with lib.licenses; [ asl20 ];
  };
}
