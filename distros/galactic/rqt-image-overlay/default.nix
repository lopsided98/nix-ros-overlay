
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, compressed-image-transport, image-transport, pluginlib, qt5, rclcpp, ros-image-to-qimage, rqt-gui-cpp, rqt-image-overlay-layer, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rqt-image-overlay";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/galactic/rqt_image_overlay/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "9a0f3996c97e19cf5c25c426e60c476cd6248bef4ea9005efedfab5f80a397e6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common compressed-image-transport std-msgs ];
  propagatedBuildInputs = [ image-transport pluginlib qt5.qtbase rclcpp ros-image-to-qimage rqt-gui-cpp rqt-image-overlay-layer ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An rqt plugin to display overlays for custom msgs on an image using plugins.'';
    license = with lib.licenses; [ asl20 ];
  };
}
