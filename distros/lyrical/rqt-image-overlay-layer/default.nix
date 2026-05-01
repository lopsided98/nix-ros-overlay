
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, message-filters, pluginlib, qt5, rclcpp, rcpputils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rqt-image-overlay-layer";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/lyrical/rqt_image_overlay_layer/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "1c76a6be3319f5199195303e73ad03a50f4d650d9b71fe95b7af77807eb94ec2";
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
