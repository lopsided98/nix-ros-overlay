
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ray-ground-classifier, rclcpp-lifecycle, ament-lint-common, ament-cmake-pclint, ament-cmake, rclcpp, autoware-auto-cmake }:
buildRosPackage {
  pname = "ros-dashing-ray-ground-classifier-nodes";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/ray_ground_classifier_nodes/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "497cd09992dd02e4e3e48dfd315de0b8d5a96ebf1808e1a5a25df66632e8972c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ray-ground-classifier rclcpp-lifecycle rclcpp ];
  checkInputs = [ ament-lint-common ament-cmake-pclint ];
  propagatedBuildInputs = [ ray-ground-classifier rclcpp-lifecycle rclcpp ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Boilerplate ROS 2 node wrappers around ray_ground_classifier'';
    license = with lib.licenses; [ asl20 ];
  };
}
