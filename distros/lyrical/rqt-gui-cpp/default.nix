
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, qt-gui-cpp, qt6, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-rqt-gui-cpp";
  version = "1.10.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/lyrical/rqt_gui_cpp/1.10.4-3.tar.gz";
    name = "1.10.4-3.tar.gz";
    sha256 = "d7c6627a58656d0df08ba56a61bf41dabb0d7b53f456eb0f2a675354ff10151c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt6.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib qt-gui-cpp rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
