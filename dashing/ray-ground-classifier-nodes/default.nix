
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, autoware-auto-cmake, ray-ground-classifier, rclcpp, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-ray-ground-classifier-nodes";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/ray_ground_classifier_nodes/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "8536432b5e89d2e4cdf260ab15e39da77f33bf82668e2fb08755afc4aedc1d62";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ray-ground-classifier rclcpp rclcpp-lifecycle sensor-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Boilerplate ROS 2 node wrappers around ray_ground_classifier'';
    license = with lib.licenses; [ asl20 ];
  };
}
