
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, glog, launch-testing-ament-cmake, lttng-ust, message-filters, rcl-yaml-param-parser, rclcpp, rclcpp-components, rosgraph-msgs, std-msgs, tracetools }:
buildRosPackage {
  pname = "ros-jazzy-agnocastlib";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocastlib/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "8e0af7fc8d6b42ffd462ce3724fe3b7704983ddb4384edfdd62bfa2f6175eabd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common launch-testing-ament-cmake std-msgs ];
  propagatedBuildInputs = [ agnocast-cie-config-msgs agnocast-cie-thread-configurator ament-index-cpp glog lttng-ust message-filters rcl-yaml-param-parser rclcpp rclcpp-components rosgraph-msgs tracetools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "True Zero Copy Communication Middleware for Unsized ROS 2 Message Types.";
    license = with lib.licenses; [ asl20 ];
  };
}
