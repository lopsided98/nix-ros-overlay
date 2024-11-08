
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, compressed-image-transport, image-transport, pluginlib, qt5, rclcpp, ros-image-to-qimage, rqt-gui, rqt-gui-cpp, rqt-image-overlay-layer, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rqt-image-overlay";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/jazzy/rqt_image_overlay/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "c5d9052c6a8f2a1de358baf2db84b12b7c838164becbb82182924e29f7f67ae4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common compressed-image-transport std-msgs ];
  propagatedBuildInputs = [ image-transport pluginlib qt5.qtbase rclcpp ros-image-to-qimage rqt-gui rqt-gui-cpp rqt-image-overlay-layer ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An rqt plugin to display overlays for custom msgs on an image using plugins.";
    license = with lib.licenses; [ asl20 ];
  };
}
