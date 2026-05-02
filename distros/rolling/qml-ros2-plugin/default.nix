
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, example-interfaces, image-transport, qt5, rclcpp, ros-babel-fish, ros-babel-fish-test-msgs, std-srvs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-qml-ros2-plugin";
  version = "3.26.30-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qml_ros2_plugin-release/archive/release/rolling/qml_ros2_plugin/3.26.30-2.tar.gz";
    name = "3.26.30-2.tar.gz";
    sha256 = "93cd4da8fed6d9cc469bfc038042817cce3801b2857a479303a38406bd119376";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto example-interfaces qt5.qtquickcontrols2 ros-babel-fish-test-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-cpp image-transport qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia rclcpp ros-babel-fish tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A QML plugin for ROS.
    Enables full communication with ROS from QML.";
    license = with lib.licenses; [ mit ];
  };
}
