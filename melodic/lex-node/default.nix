
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lex-common-msgs, gtest, catkin, rostest, aws-common, std-msgs, aws-ros1-common, roscpp, gmock }:
buildRosPackage {
  pname = "ros-melodic-lex-node";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/melodic/lex_node/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "117cf4ce5de564b0b5bded63277f07ee0a9da28df13fb8750181640ccd1a358e";
  };

  buildType = "catkin";
  buildInputs = [ lex-common-msgs aws-common std-msgs aws-ros1-common roscpp ];
  checkInputs = [ rostest gtest gmock ];
  propagatedBuildInputs = [ lex-common-msgs aws-common std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
