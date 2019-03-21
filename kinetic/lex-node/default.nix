
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lex-common-msgs, catkin, rostest, aws-common, std-msgs, aws-ros1-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-lex-node";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/lex_node-release/archive/release/kinetic/lex_node/2.0.0-1.tar.gz;
    sha256 = "ec7b27480f26ceb43976df980aa85776855d86dee6eac61000775f260874d9cc";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ lex-common-msgs aws-common std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ lex-common-msgs aws-common std-msgs aws-ros1-common catkin roscpp ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    #license = lib.licenses.Apache 2.0;
  };
}
