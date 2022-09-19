
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pluginlib, qt-gui, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-humble-rqt-gui-cpp";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/humble/rqt_gui_cpp/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "8ebf87599693fbeab3ed3274d74410f1ea1babc174c8cba95f9e5f7c8d8187c8";
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
