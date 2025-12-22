
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libserial-dev, ament-cmake, ament-cmake-clang-format, controller-manager, gflags, hardware-interface, joint-state-broadcaster, pkg-config, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-andino-base";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_base/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "970eca488d5e64682e54a73fa635ac70704257261271ef96f69f0cb9cdf7ef13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-clang-format ];
  propagatedBuildInputs = [ _unresolved_libserial-dev controller-manager gflags hardware-interface joint-state-broadcaster pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "The andino_base package";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
