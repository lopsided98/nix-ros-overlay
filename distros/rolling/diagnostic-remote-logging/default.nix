
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, curl, diagnostic-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-diagnostic-remote-logging";
  version = "4.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/diagnostic_remote_logging/4.5.7-1.tar.gz";
    name = "4.5.7-1.tar.gz";
    sha256 = "55341e7a93930692d5ad5d0e45dbbaffff169693e115bc504be690d30235d3ca";
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
