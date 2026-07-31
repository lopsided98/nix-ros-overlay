
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-qos-utils";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_qos_utils/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "7d71f2b2e6b277e592d67b302b963592999d3124e7cb202ed7f0fa5dc6de3aa3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Autoware QoS Utils provides QoS compatibility utilities for different ROS 2 distributions.";
    license = with lib.licenses; [ asl20 ];
  };
}
