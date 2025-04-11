
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, curl, diagnostic-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-diagnostic-remote-logging";
  version = "4.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/jazzy/diagnostic_remote_logging/4.2.3-1.tar.gz";
    name = "4.2.3-1.tar.gz";
    sha256 = "347121c90cc6fc61d2d9b2e349bfe1f1c268de342bf9bd2a681079dddad81810";
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
