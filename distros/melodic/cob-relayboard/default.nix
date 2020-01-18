
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-relayboard";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_relayboard/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "2912711b9f29411d00dfb918fe30841f958fe23b154d05725d67330784389e1f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
