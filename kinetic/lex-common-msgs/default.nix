
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, audio-common-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lex-common-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/lex_node-release/archive/release/kinetic/lex_common_msgs/2.0.1-1.tar.gz;
    sha256 = "c0b17dece9e5e972eb566d7a92893ba405e66f38b11e6b6f3844e5876057aad2";
  };

  buildInputs = [ std-msgs message-generation audio-common-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime audio-common-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for interacting with Amazon Lex using the lex_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
