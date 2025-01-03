
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, diagnostic-updater, example-interfaces, generate-parameter-library, hardware-interface, hardware-interface-testing, launch, launch-ros, launch-testing, launch-testing-ros, libstatistics-collector, pluginlib, python3Packages, rclcpp, rclpy, rcpputils, realtime-tools, robot-state-publisher, ros2-control-test-assets, ros2param, ros2run, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-manager";
  version = "4.23.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_manager/4.23.0-1.tar.gz";
    name = "4.23.0-1.tar.gz";
    sha256 = "d33828dede122f53609b8406fed2486fce57ed79ba537b01b5087fc6d1cb031c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest example-interfaces hardware-interface-testing launch launch-testing launch-testing-ros python3Packages.coverage rclpy robot-state-publisher ros2-control-test-assets sensor-msgs ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs diagnostic-updater generate-parameter-library hardware-interface launch launch-ros libstatistics-collector pluginlib rclcpp rcpputils realtime-tools ros2-control-test-assets ros2param ros2run std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];

  meta = {
    description = "Description of controller_manager";
    license = with lib.licenses; [ asl20 ];
  };
}
