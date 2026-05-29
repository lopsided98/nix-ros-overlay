
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, curl, diagnostic-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-diagnostic-remote-logging";
  version = "4.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/kilted/diagnostic_remote_logging/4.3.7-1.tar.gz";
    name = "4.3.7-1.tar.gz";
    sha256 = "6fc2f9806701dde81c6becf5ba0ab09975011de700169ff81c332cc760e72136";
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
