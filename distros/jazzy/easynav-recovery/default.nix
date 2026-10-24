
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-easynav-recovery";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_recovery/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "5fff758a75b1037534a400a9602d8c8b8ed4f60bb3fc63ec7ebc137744a49121";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core lifecycle-msgs pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: hosts the recovery system, a RecoveryManagerBase plugin (recovery_node).";
    license = with lib.licenses; [ asl20 ];
  };
}
