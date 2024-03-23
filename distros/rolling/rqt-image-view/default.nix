
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, image-transport, qt-gui-cpp, qt5, rclcpp, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-image-view";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_view-release/archive/release/rolling/rqt_image_view/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "1c9f2a9688c7df8a34a141012967e8c31233c5770d0a6ad8b339baf47c3c986b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport qt-gui-cpp rclcpp rqt-gui rqt-gui-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rqt_image_view provides a GUI plugin for displaying images using image_transport.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
