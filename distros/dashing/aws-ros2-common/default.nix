
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, aws-common, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-aws-ros2-common";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_ros2_common-release/archive/release/dashing/aws_ros2_common/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "829163bb785f3a980733de6ca21c2ad07f5c8c2cbdd67249c90fcb98e45731c2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ aws-common rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utilities for ROS2 nodes using Amazon Web Services.'';
    license = with lib.licenses; [ asl20 ];
  };
}
