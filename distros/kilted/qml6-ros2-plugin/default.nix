
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, example-interfaces, image-transport, qt6, rclcpp, ros-babel-fish, ros-babel-fish-test-msgs, std-srvs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-kilted-qml6-ros2-plugin";
  version = "2.25.121-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qml6_ros2_plugin-release/archive/release/kilted/qml6_ros2_plugin/2.25.121-1.tar.gz";
    name = "2.25.121-1.tar.gz";
    sha256 = "09ab405edc40829db7e1ad2f1f1e37d9957c88d67cb3720abf2d8ec3ff403931";
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
