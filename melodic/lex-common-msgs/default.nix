
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, audio-common-msgs }:
buildRosPackage {
  pname = "ros-melodic-lex-common-msgs";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/aws-gbp/lex_node-release/archive/release/melodic/lex_common_msgs/2.0.0-0.tar.gz;
    sha256 = "38bc675f3d1607953a04c92775548a0cda08aa90b0699ed3c8ae3cd0d5d3c98d";
  };

  buildInputs = [ std-msgs message-generation audio-common-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime audio-common-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for interacting with Amazon Lex using the lex_node package'';
    #license = lib.licenses.Apache 2.0;
  };
}
