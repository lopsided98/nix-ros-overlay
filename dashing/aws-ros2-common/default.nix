
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, rclcpp, aws-common, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-aws-ros2-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_ros2_common-release/archive/release/dashing/aws_ros2_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7fa53146b92ceb4ed583d97920f0a77ed73fba95b201017ea99d355e1a254d87";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp aws-common ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ rclcpp aws-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utilities for ROS2 nodes using Amazon Web Services.'';
    license = with lib.licenses; [ asl20 ];
  };
}
