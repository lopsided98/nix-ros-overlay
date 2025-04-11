
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, curl, diagnostic-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-diagnostic-remote-logging";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/humble/diagnostic_remote_logging/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "b7853761f4d9645413a994e4674dbb7b448286edebab5cedfc9862e43a51cb70";
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
