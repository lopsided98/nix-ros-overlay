
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, aws-ros1-common, catkin, roscpp, gtest, gmock, aws-common, rostest, lex-common-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lex-node";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/kinetic/lex_node/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a99d4e508dce8223896a8d5d07db69e6f0803770bd9a50476727dc66cae876d5";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs aws-ros1-common roscpp aws-common lex-common-msgs ];
  checkInputs = [ gtest gmock rostest ];
  propagatedBuildInputs = [ std-msgs aws-ros1-common roscpp aws-common lex-common-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
