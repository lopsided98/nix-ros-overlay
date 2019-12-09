
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-cob-msgs";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_msgs/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "e8a74873ca5580ee818cf45212b3c974d06a3619b9ef6b4e01b9beb9ff52a449";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation diagnostic-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime diagnostic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
