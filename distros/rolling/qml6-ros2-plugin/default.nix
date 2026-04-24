
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, example-interfaces, image-transport, qt6, rclcpp, ros-babel-fish, ros-babel-fish-test-msgs, std-srvs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-qml6-ros2-plugin";
  version = "4.26.42-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qml6_ros2_plugin-release/archive/release/rolling/qml6_ros2_plugin/4.26.42-1.tar.gz";
    name = "4.26.42-1.tar.gz";
    sha256 = "70e15f185eca45ebe27444c09d095a0ce2d24770987b2282d198d5d82c2324a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto example-interfaces qt6.qtdeclarative ros-babel-fish-test-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-cpp image-transport qt6.qtbase qt6.qtdeclarative qt6.qtmultimedia rclcpp ros-babel-fish tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A QML plugin for ROS.
    Enables full communication with ROS from QML.";
    license = with lib.licenses; [ mit ];
  };
}
