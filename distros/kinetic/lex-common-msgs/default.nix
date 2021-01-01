
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lex-common-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/kinetic/lex_common_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "06c01422063a3b321b1c8ac171c59f4a1bce7889d4cb8dc2eaf0d2c77f7403d4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ audio-common-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for interacting with Amazon Lex using the lex_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
