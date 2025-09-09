
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, curl, diagnostic-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-diagnostic-remote-logging";
  version = "4.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/kilted/diagnostic_remote_logging/4.3.6-1.tar.gz";
    name = "4.3.6-1.tar.gz";
    sha256 = "7046344094841a82dd4fe5e6bc834594dc319d9c632dfc15597c32cf61404ef3";
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
