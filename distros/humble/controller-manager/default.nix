
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, generate-parameter-library, hardware-interface, hardware-interface-testing, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, libstatistics-collector, lifecycle-msgs, pluginlib, python3Packages, rcl-interfaces, rclcpp, rclpy, realtime-tools, robot-state-publisher, ros2-control-test-assets, ros2param, ros2pkg, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-controller-manager";
  version = "2.54.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager/2.54.2-1.tar.gz";
    name = "2.54.2-1.tar.gz";
    sha256 = "0fc83580f89c94ca1f3a4c06fe477381a0339203579601e9ca49f4d4f0df3d53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest hardware-interface-testing launch-testing launch-testing-ament-cmake python3Packages.coverage robot-state-publisher ros2-control-test-assets ros2pkg ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs generate-parameter-library hardware-interface launch launch-ros launch-testing-ros libstatistics-collector lifecycle-msgs pluginlib python3Packages.pyyaml rcl-interfaces rclcpp rclpy realtime-tools ros2param sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];

  meta = {
    description = "Description of controller_manager";
    license = with lib.licenses; [ asl20 ];
  };
}
