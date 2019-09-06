
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, catkin, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidget-power-state";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidget_power_state/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "0c82b6402f68ffbf359d714cb189f2118157c8ef58b7189459a9d19e755d21ab";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_power_state package'';
    license = with lib.licenses; [ asl20 ];
  };
}
