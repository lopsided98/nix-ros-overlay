
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, lttng-ust, rclcpp, rclcpp-components, std-msgs, tracetools }:
buildRosPackage {
  pname = "ros-humble-agnocastlib";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocastlib/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "a25fd2e103c9525f0e9565af1d3da904ed091cef4de9d4b5da9b619ae1f0568e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-ust rclcpp rclcpp-components std-msgs tracetools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "True Zero Copy Communication Middleware for Unsized ROS 2 Message Types.";
    license = with lib.licenses; [ asl20 ];
  };
}
