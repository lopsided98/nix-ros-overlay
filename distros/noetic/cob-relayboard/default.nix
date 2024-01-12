
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-relayboard";
  version = "0.7.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_relayboard/0.7.15-1.tar.gz";
    name = "0.7.15-1.tar.gz";
    sha256 = "cfb49eb4df06ec1f297fcc7632c7a25f26b3472ad3a7c4f52793d213f2158d5e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
