
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-relayboard";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_relayboard/0.7.0-1.tar.gz;
    sha256 = "20f34428d23bed610c9a518b689d85bb4339ad447e9030825fd862b1f9485e26";
  };

  buildInputs = [ std-msgs cob-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs cob-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
