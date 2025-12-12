
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, backward-ros, controller-interface, controller-manager-msgs, diagnostic-updater, example-interfaces, fmt, generate-parameter-library, hardware-interface, hardware-interface-testing, launch, launch-ros, launch-testing, launch-testing-ros, libstatistics-collector, lifecycle-msgs, pluginlib, python3Packages, rcl-interfaces, rclcpp, rclpy, realtime-tools, robot-state-publisher, ros2-control-cmake, ros2-control-test-assets, ros2param, ros2pkg, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-manager";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_manager/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "db0af918d9b9222acec8c4834ad7d706a3ff18b01ef82a6f19bbc6632b8cb2c9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest example-interfaces hardware-interface-testing launch-testing python3Packages.coverage robot-state-publisher ros2-control-test-assets ros2pkg ];
  propagatedBuildInputs = [ backward-ros controller-interface controller-manager-msgs diagnostic-updater fmt generate-parameter-library hardware-interface launch launch-ros launch-testing-ros libstatistics-collector lifecycle-msgs pluginlib python3Packages.filelock python3Packages.pyyaml rcl-interfaces rclcpp rclpy realtime-tools ros2param sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];

  meta = {
    description = "The main runnable entrypoint of ros2_control and home of controller management and resource management.";
    license = with lib.licenses; [ asl20 ];
  };
}
