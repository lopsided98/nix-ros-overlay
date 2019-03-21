
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-relayboard";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_relayboard/0.6.13-0.tar.gz;
    sha256 = "30649f76617d54a7e06d9c7721be718d0f1f3e05ffea104723a0d9be6a8e30ab";
  };

  propagatedBuildInputs = [ std-msgs cob-msgs roscpp rospy ];
  nativeBuildInputs = [ std-msgs cob-msgs roscpp catkin ];

  meta = {
    description = ''cob_relayboard'';
    #license = lib.licenses.Apache 2.0;
  };
}
