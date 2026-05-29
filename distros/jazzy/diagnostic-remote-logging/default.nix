
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, curl, diagnostic-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-diagnostic-remote-logging";
  version = "4.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/jazzy/diagnostic_remote_logging/4.2.7-1.tar.gz";
    name = "4.2.7-1.tar.gz";
    sha256 = "bf3fea0932a2517bfc3a651ec091c8eaab912b81c5ca6fdca9bf61c36a09117f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake curl diagnostic-msgs rclcpp-components ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tools for remotely logging diagnostics data.";
    license = with lib.licenses; [ bsd3 ];
  };
}
