
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, image-transport, pluginlib, qt5, rclcpp, ros-image-to-qimage, rqt-gui-cpp, rqt-image-overlay-layer }:
buildRosPackage {
  pname = "ros-galactic-rqt-image-overlay";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-sports/rqt_image_overlay-release/archive/release/galactic/rqt_image_overlay/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "be7f3bfb16e7183f2491b8992cb7cd74d53790a8f680609c3cf96a6b11d69f3f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ image-transport pluginlib qt5.qtbase rclcpp ros-image-to-qimage rqt-gui-cpp rqt-image-overlay-layer ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An rqt plugin to display overlays for custom msgs on an image using plugins.'';
    license = with lib.licenses; [ asl20 ];
  };
}
