
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-gui, qt-gui-cpp, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-rqt-gui-cpp";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/dashing/rqt_gui_cpp/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "74a2928add4281a74a24cda26fa36468a8aeb70348e82de6979b95a57b28bd0e";
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
