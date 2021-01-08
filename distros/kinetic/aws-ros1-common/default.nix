
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, gtest, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-aws-ros1-common";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_ros1_common-release/archive/release/kinetic/aws_ros1_common/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "89e0fd46b76fe14eb2ab4f00b77cb554fa1b8c1ed81dc9259d5eaefe32625f4c";
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
