
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lex-common-msgs, catkin, rostest, aws-common, std-msgs, aws-ros1-common, roscpp }:
buildRosPackage {
  pname = "ros-melodic-lex-node";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/aws-gbp/lex_node-release/archive/release/melodic/lex_node/2.0.0-0.tar.gz;
    sha256 = "f1d299c1196758e3443d3d83d2e5953391c35b8b00c233b36257a3ad38d03ee7";
  };

  buildInputs = [ lex-common-msgs aws-common std-msgs aws-ros1-common roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ lex-common-msgs aws-common std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    #license = lib.licenses.Apache 2.0;
  };
}
