
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pluginlib, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-rqt-gui-cpp";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/jazzy/rqt_gui_cpp/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "cc26d3abb6c6bb7194e3881c05471e5423842089dfb4052cddc2b6f7074d0f90";
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
