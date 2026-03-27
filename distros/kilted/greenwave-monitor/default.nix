
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-flake8, ament-lint-auto, ament-lint-common, ament-pep257, diagnostic-msgs, greenwave-monitor-interfaces, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rclcpp, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-greenwave-monitor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/greenwave_monitor-release/archive/release/kilted/greenwave_monitor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "fb3510cf7f292b3e496cdc1f9fce049c03d8da6516afaadad266af20fbbe9064";
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
