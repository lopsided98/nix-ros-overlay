
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, backward-ros, controller-interface, controller-manager-msgs, diagnostic-updater, example-interfaces, fmt, generate-parameter-library, hardware-interface, hardware-interface-testing, launch, launch-ros, launch-testing, launch-testing-ros, libstatistics-collector, lifecycle-msgs, pluginlib, python3Packages, rcl-interfaces, rclcpp, rclpy, realtime-tools, robot-state-publisher, ros2-control-cmake, ros2-control-test-assets, ros2param, ros2pkg, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-controller-manager";
  version = "5.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/controller_manager/5.11.1-1.tar.gz";
    name = "5.11.1-1.tar.gz";
    sha256 = "c7170be9c7e8bcb05ae8b48c27b20b2872975755614a83a5e348af9b260fb09f";
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
