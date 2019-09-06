
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, catkin, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidget-em-state";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidget_em_state/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "fd76a6fef6160215a19275fe4acc56b5596b17ab2750190eae4b66fcde038d36";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_phidget_em_state package'';
    license = with lib.licenses; [ asl20 ];
  };
}
