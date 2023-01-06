
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, image-transport, qt-gui-cpp, qt5, rclcpp, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-image-view";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_view-release/archive/release/rolling/rqt_image_view/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "6a002934c2e0d00f1bbaec1748ba41ca2d0c2954cc5312badb3325946ab7a94b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport qt-gui-cpp rclcpp rqt-gui rqt-gui-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
