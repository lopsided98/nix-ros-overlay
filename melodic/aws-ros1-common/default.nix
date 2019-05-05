
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, roscpp, catkin, aws-common }:
buildRosPackage {
  pname = "ros-melodic-aws-ros1-common";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/aws-gbp/aws_ros1_common-release/archive/release/melodic/aws_ros1_common/2.0.0-0.tar.gz;
    sha256 = "34ab3879ab871a990b6b3eb591794dcdc7c62c32ef2687d011db9fdf14fcd354";
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
