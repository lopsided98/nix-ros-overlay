
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gmock, gtest, lex-common, lex-common-msgs, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lex-node";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/kinetic/lex_node/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "dabda0eee28c7f38c38c7dc892b577af801136181d75a9fb7477dff7ee6856e7";
  };

  buildType = "catkin";
  checkInputs = [ gmock gtest rostest ];
  propagatedBuildInputs = [ aws-common aws-ros1-common lex-common lex-common-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
