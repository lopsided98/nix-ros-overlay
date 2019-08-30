
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, catkin, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-phidget-power-state";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidget_power_state/0.7.0-1.tar.gz;
    sha256 = "d79776bbc3ce0129a4a53b9db3a8035ebc4bdd374107b5bf70e5ae843d6417f6";
  };

  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_power_state package'';
    license = with lib.licenses; [ asl20 ];
  };
}
