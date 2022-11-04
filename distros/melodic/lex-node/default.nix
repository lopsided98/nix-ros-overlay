
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gtest, lex-common, lex-common-msgs, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-lex-node";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/melodic/lex_node/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "24375a02bbf5b57fa1fb9765d43c4cbcf76f7c14e3f250369a738f023ab773e6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ aws-common aws-ros1-common lex-common lex-common-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
