
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-self-test";
  version = "4.4.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/lyrical/self_test/4.4.7-1.tar.gz";
    name = "4.4.7-1.tar.gz";
    sha256 = "760f3fa7ce28c43b5e0991fc3e14b7c7ca3a7630e6c8ad7b39703985cb4d8f1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Self-test tools for diagnostics.";
    license = with lib.licenses; [ bsd3 ];
  };
}
