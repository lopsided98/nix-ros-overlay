
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, gtest, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-aws-ros1-common";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_ros1_common-release/archive/release/kinetic/aws_ros1_common/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a6809dc8925f253335963fe069c7043ecc8d4143f21fc60aca776655afb2f132";
  };

  buildType = "catkin";
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ aws-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common utilities for ROS1 nodes using Amazon Web Services'';
    license = with lib.licenses; [ asl20 ];
  };
}
