
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, catkin, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidget-em-state";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidget_em_state/0.6.13-0.tar.gz;
    sha256 = "4ab348fa9fee63ebe2889172386579f89fd784d88ce222db29b253a465e22b8b";
  };

  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_em_state package'';
    #license = lib.licenses.Apache 2.0;
  };
}
