
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, image-transport, qt-gui-cpp, qt5, rclcpp, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-rqt-image-view";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_view-release/archive/release/kilted/rqt_image_view/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "69b994694e0ec29060787d082438438bc2f07fca96b448fe95e5f89a8c171521";
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
