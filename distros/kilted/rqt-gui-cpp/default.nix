
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-rqt-gui-cpp";
  version = "1.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/kilted/rqt_gui_cpp/1.9.0-2.tar.gz";
    name = "1.9.0-2.tar.gz";
    sha256 = "b1019edbcb1fd70906939d63f7d8c15d5958fcf29c5e494240642ed10a84bb51";
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
