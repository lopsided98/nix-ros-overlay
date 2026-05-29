
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-humble-self-test";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/humble/self_test/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "8490b9eb668866429d72868e5e43bb377da865135330a3819d53e45e819df6f4";
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
