
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-relayboard";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_relayboard/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "66fb589e872d726628ace10ce4aa9e94e6d3bcae9e6886c95dc497e9551ecd03";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
