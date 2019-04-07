
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, audio-common-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lex-common-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/lex_node-release/archive/release/kinetic/lex_common_msgs/2.0.0-1.tar.gz;
    sha256 = "68018b2090942b9c89ac2c3e68e8fd813bde28971629334a7b685dafbd76ab5e";
  };

  buildInputs = [ std-msgs message-generation audio-common-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime audio-common-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for interacting with Amazon Lex using the lex_node package'';
    #license = lib.licenses.Apache 2.0;
  };
}
