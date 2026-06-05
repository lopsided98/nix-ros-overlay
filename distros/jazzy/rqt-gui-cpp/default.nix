
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pluginlib, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-rqt-gui-cpp";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/jazzy/rqt_gui_cpp/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "9218ade1ec88c4fd5d4c5abed838137cd1819e9e62291b44d6c4c3c5801a7a90";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  propagatedBuildInputs = [ pluginlib qt-gui-cpp rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
