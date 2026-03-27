
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-flake8, ament-lint-auto, ament-lint-common, ament-pep257, diagnostic-msgs, greenwave-monitor-interfaces, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rclcpp, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-greenwave-monitor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/greenwave_monitor-release/archive/release/jazzy/greenwave_monitor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "66efcd997ed3215895db605b08536f1cdeec08348510554354501c036e75406a";
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
