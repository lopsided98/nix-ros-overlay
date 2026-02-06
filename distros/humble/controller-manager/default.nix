
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, generate-parameter-library, hardware-interface, hardware-interface-testing, launch, launch-ros, launch-testing, launch-testing-ros, libstatistics-collector, lifecycle-msgs, pluginlib, python3Packages, rcl-interfaces, rclcpp, rclpy, realtime-tools, robot-state-publisher, ros2-control-test-assets, ros2param, ros2pkg, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-controller-manager";
  version = "2.53.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager/2.53.1-1.tar.gz";
    name = "2.53.1-1.tar.gz";
    sha256 = "cf244b907ac1414ae720a38f6d70b23708a97e56b2db31237b6265f600b6e6ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest hardware-interface-testing launch-testing python3Packages.coverage robot-state-publisher ros2-control-test-assets ros2pkg ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs generate-parameter-library hardware-interface launch launch-ros launch-testing-ros libstatistics-collector lifecycle-msgs pluginlib python3Packages.pyyaml rcl-interfaces rclcpp rclpy realtime-tools ros2param sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];

  meta = {
    description = "Description of controller_manager";
    license = with lib.licenses; [ asl20 ];
  };
}
