
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, message-filters, pluginlib, qt5, rclcpp, rcpputils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-rolling-rqt-image-overlay-layer";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/rolling/rqt_image_overlay_layer/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "d34a2f88070d226125e8bab9a7ca7e444e749b2e9bbe5544006aa541aacfbe3e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters pluginlib qt5.qtbase rclcpp rcpputils rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides an rqt_image_overlay_layer plugin interface, and a template impelementation class'';
    license = with lib.licenses; [ asl20 ];
  };
}
