
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, image-transport, pluginlib, qt5, rclcpp, ros-image-to-qimage, rqt-gui-cpp, rqt-image-overlay-layer, std-msgs, theora-image-transport }:
buildRosPackage {
  pname = "ros-humble-rqt-image-overlay";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/humble/rqt_image_overlay/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "c54ff92c70daf979088dfea9a9aba1c0c4054241e53ed9557e05cb1c44d24217";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common std-msgs theora-image-transport ];
  propagatedBuildInputs = [ image-transport pluginlib qt5.qtbase rclcpp ros-image-to-qimage rqt-gui-cpp rqt-image-overlay-layer ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An rqt plugin to display overlays for custom msgs on an image using plugins.'';
    license = with lib.licenses; [ asl20 ];
  };
}
