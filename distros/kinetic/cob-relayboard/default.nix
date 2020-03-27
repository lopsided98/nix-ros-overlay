
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-relayboard";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_relayboard/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "cfd25cee0069dca595caa0222715e582d39a90a26a0a515ed49c17f9ae23e9d5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
