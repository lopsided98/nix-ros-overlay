
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocast-sample-interfaces, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, glog, launch-testing-ament-cmake, lttng-ust, rcl-yaml-param-parser, rclcpp, rclcpp-components, rosgraph-msgs, std-msgs, tracetools }:
buildRosPackage {
  pname = "ros-jazzy-agnocastlib";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocastlib/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "e54ff8404eb7b211257e6b6c5742dc069f8dea467e6ea283bbd87532398f8a90";
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
