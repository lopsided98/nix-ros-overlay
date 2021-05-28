
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-gui, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-rqt-gui-cpp";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/galactic/rqt_gui_cpp/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "663361025b3b2a1947e43617ce699c310c994107ff7c39be88bfccbf292e19aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ qt-gui qt-gui-cpp rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
