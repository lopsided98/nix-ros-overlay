
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, hardware-interface, hardware-interface-testing, launch, launch-ros, launch-testing, launch-testing-ros, pluginlib, python3Packages, rclcpp, rclpy, rcpputils, realtime-tools, robot-state-publisher, ros2-control-test-assets, ros2param, ros2run, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-controller-manager";
  version = "2.50.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager/2.50.0-1.tar.gz";
    name = "2.50.0-1.tar.gz";
    sha256 = "484b024096a78fb1901ae29933484b96fd006b97dbe1c12591ceacb97f3d8e04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest hardware-interface-testing launch launch-testing launch-testing-ros python3Packages.coverage rclpy robot-state-publisher ros2-control-test-assets sensor-msgs ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs hardware-interface launch launch-ros pluginlib rclcpp rcpputils realtime-tools ros2-control-test-assets ros2param ros2run std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];

  meta = {
    description = "Description of controller_manager";
    license = with lib.licenses; [ asl20 ];
  };
}
