
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-gui-cpp, qt-gui, rclcpp, qt5 }:
buildRosPackage {
  pname = "ros-dashing-rqt-gui-cpp";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt-release/archive/release/dashing/rqt_gui_cpp/1.0.4-1.tar.gz;
    sha256 = "d3badbb1c1c003c02612459c7060cb1e5e4e414666910647af8924307ea2815b";
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
