
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, catkin, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidget-power-state";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidget_power_state/0.6.13-0.tar.gz;
    sha256 = "481636e9d07d97b122aeeb638be979337019c1bfaeba01215cd308df3eee87e0";
  };

  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_power_state package'';
    #license = lib.licenses.Apache 2.0;
  };
}
