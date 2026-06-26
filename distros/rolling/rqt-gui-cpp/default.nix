
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, qt-gui-cpp, qt6, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui-cpp";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui_cpp/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "5378a41f0950de8e8f3dbd300de65c4c4b984c6e934752f22d425138fabed845";
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
