
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, example-interfaces, image-transport, qt6, rclcpp, ros-babel-fish, ros-babel-fish-test-msgs, std-srvs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-qml6-ros2-plugin";
  version = "4.26.42-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qml6_ros2_plugin-release/archive/release/lyrical/qml6_ros2_plugin/4.26.42-3.tar.gz";
    name = "4.26.42-3.tar.gz";
    sha256 = "45d9b0d778bbf8a1d86b4ff43d66815f94611e9fff8998f1dc05ea74b5ef513c";
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
