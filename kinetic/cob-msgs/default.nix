
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-msgs";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_msgs/0.6.12-1.tar.gz;
    sha256 = "2804fae147cc7a535e36bc0982129d6f8d5b314b15b4df5571fed455d0ab0757";
  };

  buildInputs = [ diagnostic-msgs message-generation std-msgs ];
  propagatedBuildInputs = [ diagnostic-msgs std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
