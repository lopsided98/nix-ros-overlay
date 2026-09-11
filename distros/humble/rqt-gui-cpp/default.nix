
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pluginlib, qt-gui, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-humble-rqt-gui-cpp";
  version = "1.1.10-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/humble/rqt_gui_cpp/1.1.10-2.tar.gz";
    name = "1.1.10-2.tar.gz";
    sha256 = "52969e0cca3e5392c8bdffecfa6f487f36ec7b30d1a502b264b96ea15f78903c";
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
