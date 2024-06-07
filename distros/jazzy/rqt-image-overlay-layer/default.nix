
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, message-filters, pluginlib, qt5, rclcpp, rcpputils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rqt-image-overlay-layer";
  version = "0.3.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/jazzy/rqt_image_overlay_layer/0.3.1-4.tar.gz";
    name = "0.3.1-4.tar.gz";
    sha256 = "0467b579e3ed618c47da06d10785e39053e02ebe26f9d3dbb24b20294c1007df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters pluginlib qt5.qtbase rclcpp rcpputils rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides an rqt_image_overlay_layer plugin interface, and a template impelementation class";
    license = with lib.licenses; [ asl20 ];
  };
}
