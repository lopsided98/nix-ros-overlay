
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, sensor-msgs, geometry-msgs, rqt-gui-cpp, ament-cmake, qt-gui-cpp, image-transport, cv-bridge, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-rqt-image-view";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_view-release/archive/release/eloquent/rqt_image_view/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "8cd6b1d668fe49181fbca2c5c834a65d954ba07045212230c82f664cf546d989";
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
