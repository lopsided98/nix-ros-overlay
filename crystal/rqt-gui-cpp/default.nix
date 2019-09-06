
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-gui-cpp, qt-gui, rclcpp, qt5 }:
buildRosPackage {
  pname = "ros-crystal-rqt-gui-cpp";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt-release/archive/release/crystal/rqt_gui_cpp/1.0.2-0.tar.gz;
    sha256 = "d8138f546878edf1673ed52dc1b4e02ecce8cde383249634a49c4416e0e1a823";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt-gui-cpp qt-gui rclcpp qt5.qtbase ];
  propagatedBuildInputs = [ qt-gui-cpp qt-gui rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
