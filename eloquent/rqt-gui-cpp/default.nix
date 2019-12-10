
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-gui, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-rqt-gui-cpp";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/eloquent/rqt_gui_cpp/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "ae40d9c0150c22d194f9afa4881bc6fcd2b299a841ac0fa88c0b92c96c2cd278";
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
