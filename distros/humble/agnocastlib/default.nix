
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, geometry-msgs, glog, launch-testing-ament-cmake, lttng-ust, message-filters, rcl-yaml-param-parser, rclcpp, rclcpp-components, rosgraph-msgs, std-msgs, tf2, tf2-msgs, tf2-ros, tracetools }:
buildRosPackage {
  pname = "ros-humble-agnocastlib";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocastlib/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "8ca6b2e7f70cde915ab4609e5d99710373a11c28cc2d8ff90b2164ce70036fc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common launch-testing-ament-cmake std-msgs ];
  propagatedBuildInputs = [ agnocast-cie-config-msgs agnocast-cie-thread-configurator ament-index-cpp diagnostic-msgs diagnostic-updater geometry-msgs glog lttng-ust message-filters rcl-yaml-param-parser rclcpp rclcpp-components rosgraph-msgs tf2 tf2-msgs tf2-ros tracetools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "True Zero Copy Communication Middleware for Unsized ROS 2 Message Types.";
    license = with lib.licenses; [ asl20 ];
  };
}
