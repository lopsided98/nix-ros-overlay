
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, sensor-msgs, geometry-msgs, rqt-gui-cpp, ament-cmake, qt-gui-cpp, image-transport, cv-bridge, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-crystal-rqt-image-view";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_view-release/archive/release/crystal/rqt_image_view/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "36aaa0d59df2005e1e0b220e15d13e79df9ec027ba28cf1b829e9f05c226c263";
  };

  buildType = "ament_cmake";
  buildInputs = [ rqt-gui sensor-msgs geometry-msgs rqt-gui-cpp qt-gui-cpp qt5.qtbase image-transport cv-bridge rclcpp ];
  propagatedBuildInputs = [ rqt-gui sensor-msgs geometry-msgs rqt-gui-cpp qt-gui-cpp image-transport cv-bridge rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
