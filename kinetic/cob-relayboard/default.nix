
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-relayboard";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_relayboard/0.6.14-1.tar.gz;
    sha256 = "bc8445e4a725832d648e048e1d9f5555b1487d0ac67306e8f7452fcd9393a2d2";
  };

  buildInputs = [ std-msgs cob-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs cob-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
