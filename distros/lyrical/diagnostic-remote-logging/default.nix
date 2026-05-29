
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, curl, diagnostic-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-lyrical-diagnostic-remote-logging";
  version = "4.4.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/lyrical/diagnostic_remote_logging/4.4.7-1.tar.gz";
    name = "4.4.7-1.tar.gz";
    sha256 = "d06d0261e37f17940baf94fcdbc901bc9ae6f61da60c42d54d57c6de94c31664";
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
