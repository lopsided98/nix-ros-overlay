
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-gui, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-rqt-gui-cpp";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/foxy/rqt_gui_cpp/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "a1fdef3ea59c90b09152ed4603943a05ad7aaaf2dcea62f57cbf87a6e56fdbac";
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
