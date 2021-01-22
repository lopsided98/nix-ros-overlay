
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-relayboard";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_relayboard/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "643c6d9944a1e18b637747af6541946949f98f558bcacc4bc65ebfce8cf86821";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
