
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, gtest, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-aws-ros1-common";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_ros1_common-release/archive/release/melodic/aws_ros1_common/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "c4a4208d835285e1c0301cc0269f3915962c6fc14631b6fcb8cc8dd08a83ba07";
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
