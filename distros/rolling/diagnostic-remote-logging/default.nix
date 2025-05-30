
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, curl, diagnostic-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-diagnostic-remote-logging";
  version = "4.4.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/diagnostic_remote_logging/4.4.6-1.tar.gz";
    name = "4.4.6-1.tar.gz";
    sha256 = "5f493c6e7a9eaeeb436999777a84bdf8207ebd655005d3ad38333ddd3f0e6ae3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake curl diagnostic-msgs rclcpp-components ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "diagnostic_remote_logging";
    license = with lib.licenses; [ bsd3 ];
  };
}
