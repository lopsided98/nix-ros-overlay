
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, message-filters, pluginlib, qt5, rclcpp, rcpputils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-humble-rqt-image-overlay-layer";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/humble/rqt_image_overlay_layer/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "3a59a80f9a60e6eff1b792c201caf740a43ee8429cdd9e500ace01db37065a34";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters pluginlib qt5.qtbase rclcpp rcpputils rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides an rqt_image_overlay_layer plugin interface, and a template impelementation class'';
    license = with lib.licenses; [ asl20 ];
  };
}
