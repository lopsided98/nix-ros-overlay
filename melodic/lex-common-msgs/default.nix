
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, audio-common-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-lex-common-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/melodic/lex_common_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "1379689a550b1cce87b3fb444add83140f2fcd085848da18b85dbc1f2ab772eb";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation audio-common-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime audio-common-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for interacting with Amazon Lex using the lex_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
