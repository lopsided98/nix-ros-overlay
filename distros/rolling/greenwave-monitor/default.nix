
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-flake8, ament-lint-auto, ament-lint-common, ament-pep257, diagnostic-msgs, greenwave-monitor-interfaces, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rclcpp, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-greenwave-monitor";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/greenwave_monitor-release/archive/release/rolling/greenwave_monitor/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "6eaa3915c2fd2e1feb2f6b1ff66466e39e97d4293d5754eb7419163783da190a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-flake8 ament-lint-auto ament-lint-common ament-pep257 launch-testing launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ diagnostic-msgs greenwave-monitor-interfaces launch launch-ros rclcpp rclpy rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "A ROS 2 diagnostic tool for monitoring topic frame rates and latency metrics.";
    license = with lib.licenses; [ asl20 ];
  };
}
