
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-rqt-gui-cpp";
  version = "1.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/kilted/rqt_gui_cpp/1.9.1-1.tar.gz";
    name = "1.9.1-1.tar.gz";
    sha256 = "d74bd0b2b3f2b97e7d85b47a2fd24dd2fe9e97743b90440153d870d7006fc81d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib qt-gui-cpp rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
