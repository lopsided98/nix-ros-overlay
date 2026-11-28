
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, ament-index-python, diagnostic-msgs, example-interfaces, greenwave-monitor, launch-ros, launch-testing, launch-testing-ament-cmake, lifecycle-msgs, python3Packages, rcl, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-lifecycle, rmw, rmw-dds-common, ros2-medkit-action-status-bridge, ros2-medkit-cmake, ros2-medkit-diagnostic-bridge, ros2-medkit-fault-manager, ros2-medkit-fault-reporter, ros2-medkit-gateway, ros2-medkit-graph-provider, ros2-medkit-linux-introspection, ros2-medkit-log-bridge, ros2-medkit-msgs, ros2-medkit-param-beacon, ros2-medkit-topic-beacon, rosidl-typesupport-cpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-integration-tests";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_integration_tests/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "9b3e78f6a71818acf1c5bd61d4e862c0732a2306ba84a2638285fe649dec9626";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-flake8 ament-cmake-gmock ament-cmake-pytest ament-index-python greenwave-monitor launch-ros launch-testing launch-testing-ament-cmake python3Packages.jsonschema python3Packages.pytest python3Packages.requests rcl rmw rmw-dds-common ros2-medkit-action-status-bridge ros2-medkit-diagnostic-bridge ros2-medkit-fault-manager ros2-medkit-fault-reporter ros2-medkit-gateway ros2-medkit-graph-provider ros2-medkit-linux-introspection ros2-medkit-log-bridge ros2-medkit-param-beacon ros2-medkit-topic-beacon rosidl-typesupport-cpp ];
  propagatedBuildInputs = [ diagnostic-msgs example-interfaces lifecycle-msgs rcl-interfaces rclcpp rclcpp-action rclcpp-lifecycle ros2-medkit-msgs sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ros2-medkit-cmake ];

  meta = {
    description = "Integration tests and demo nodes for ros2_medkit";
    license = with lib.licenses; [ asl20 ];
  };
}
