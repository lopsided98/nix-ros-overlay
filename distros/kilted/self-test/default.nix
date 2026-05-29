
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-self-test";
  version = "4.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/kilted/self_test/4.3.7-1.tar.gz";
    name = "4.3.7-1.tar.gz";
    sha256 = "d549dbd89ba7fd219179ce09c8f0b01c3635eda6f246e9302884cabd6a3bc6e5";
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
