
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gtest, lex-common, lex-common-msgs, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-lex-node";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/melodic/lex_node/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "e7ef63cc1fb0b85d1c3e4c69d8feb4866ba240937ad8e639c7afd8ddf5253a81";
  };

  buildType = "catkin";
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ aws-common aws-ros1-common lex-common lex-common-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
