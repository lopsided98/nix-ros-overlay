
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, pluginlib, qt-gui-cpp, qt5or6, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui-cpp";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui_cpp/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "f25e468c41557ad21a9c79762f7df31c96ceb05647009d37ce4d558c971fd706";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core qt5or6.qtbase ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib qt-gui-cpp rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
