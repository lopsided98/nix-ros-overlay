
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, roscpp, catkin, aws-common }:
buildRosPackage {
  pname = "ros-kinetic-aws-ros1-common";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/aws_ros1_common-release/archive/release/kinetic/aws_ros1_common/2.0.0-1.tar.gz;
    sha256 = "1d5d17631e07c0bf544bb13ecfee572dff235e14239bd7e86ead078bc812dbc8";
  };

  buildInputs = [ aws-common roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ aws-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common utilities for ROS1 nodes using Amazon Web Services'';
    license = with lib.licenses; [ asl20 ];
  };
}
