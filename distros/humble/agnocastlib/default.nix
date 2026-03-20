
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocast-sample-interfaces, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, glog, launch-testing-ament-cmake, lttng-ust, rcl-yaml-param-parser, rclcpp, rclcpp-components, rosgraph-msgs, std-msgs, tracetools }:
buildRosPackage {
  pname = "ros-humble-agnocastlib";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocastlib/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "9a75fa802c26e9eb8f49f45e0294a7042e03d12d07b8fa3ac2fa9dd2921242f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common launch-testing-ament-cmake ];
  propagatedBuildInputs = [ agnocast-cie-config-msgs agnocast-cie-thread-configurator agnocast-sample-interfaces ament-index-cpp glog lttng-ust rcl-yaml-param-parser rclcpp rclcpp-components rosgraph-msgs std-msgs tracetools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "True Zero Copy Communication Middleware for Unsized ROS 2 Message Types.";
    license = with lib.licenses; [ asl20 ];
  };
}
