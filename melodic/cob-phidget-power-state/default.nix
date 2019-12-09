
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-phidgets, rospy, catkin, cob-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-phidget-power-state";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidget_power_state/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "99b555237b13dbb1a61c2f550491f02a577bdf10892bb1e889eb3c859220e004";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-phidgets rospy cob-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_power_state package'';
    license = with lib.licenses; [ asl20 ];
  };
}
