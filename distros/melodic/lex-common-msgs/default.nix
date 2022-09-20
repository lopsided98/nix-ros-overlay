
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-lex-common-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/melodic/lex_common_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "ca665d382b0694fc69c410c9b474bffebf278025ac46ac6554488870e94b23c8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ audio-common-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for interacting with Amazon Lex using the lex_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
