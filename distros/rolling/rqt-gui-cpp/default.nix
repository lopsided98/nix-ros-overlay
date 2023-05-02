
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pluginlib, qt-gui, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui-cpp";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui_cpp/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "1677d7e018ce0f8a2e3191b6daf0eed47f7977be25a734f47f411fbd58251456";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  propagatedBuildInputs = [ pluginlib qt-gui qt-gui-cpp rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
