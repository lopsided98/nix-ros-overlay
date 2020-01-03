
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gmock, gtest, lex-common-msgs, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lex-node";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/kinetic/lex_node/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a99d4e508dce8223896a8d5d07db69e6f0803770bd9a50476727dc66cae876d5";
  };

  buildType = "catkin";
  checkInputs = [ gmock gtest rostest ];
  propagatedBuildInputs = [ aws-common aws-ros1-common lex-common-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
