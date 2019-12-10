
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, image-transport, qt-gui-cpp, qt5, rclcpp, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rqt-image-view";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_view-release/archive/release/eloquent/rqt_image_view/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "8cd6b1d668fe49181fbca2c5c834a65d954ba07045212230c82f664cf546d989";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport qt-gui-cpp rclcpp rqt-gui rqt-gui-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
