
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, compressed-image-transport, image-transport, pluginlib, qt5, rclcpp, ros-image-to-qimage, rqt-gui, rqt-gui-cpp, rqt-image-overlay-layer, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rqt-image-overlay";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/kilted/rqt_image_overlay/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "2d63456da3e9d66e82cb0cdd1913d6b0870909099f7b1273668365bf437852e2";
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
