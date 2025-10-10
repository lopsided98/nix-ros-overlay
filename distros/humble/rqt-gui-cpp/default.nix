
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pluginlib, qt-gui, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-humble-rqt-gui-cpp";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/humble/rqt_gui_cpp/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "b112db5619858b91dcdcceff09f6fa402e35ed5208b274d2a137de7df7191b47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  propagatedBuildInputs = [ pluginlib qt-gui qt-gui-cpp rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
