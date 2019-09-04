
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-transport, sensor-msgs, rqt-gui, cv-bridge, qt-gui-cpp, qt5, rqt-gui-cpp, rclcpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-rqt-image-view";
  version = "1.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt_image_view-release/archive/release/dashing/rqt_image_view/1.0.2-1.tar.gz;
    sha256 = "cac35f6279ac390c87cf5bfb6b6b49286189167941fa878584fe35119e7ff202";
  };

  buildType = "ament_cmake";
  buildInputs = [ image-transport sensor-msgs rqt-gui cv-bridge qt5.qtbase qt-gui-cpp rqt-gui-cpp rclcpp geometry-msgs ];
  propagatedBuildInputs = [ image-transport sensor-msgs rqt-gui cv-bridge qt-gui-cpp rqt-gui-cpp rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
