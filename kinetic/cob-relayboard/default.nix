
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, std-msgs, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-relayboard";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_relayboard/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "2ad7ef3c66f744394cfd849dbce2bad317e944312853fab970cfccb6dad052c3";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs cob-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs rospy cob-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
