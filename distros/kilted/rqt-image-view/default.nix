
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, image-transport, qt-gui-cpp, qt5, rclcpp, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-rqt-image-view";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_view-release/archive/release/kilted/rqt_image_view/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "21d68eaa38df8bfc67b06f91a938e9309aa64cf2d21fc892866289f2b357a168";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport qt-gui-cpp rclcpp rqt-gui rqt-gui-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rqt_image_view provides a GUI plugin for displaying images using image_transport.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
