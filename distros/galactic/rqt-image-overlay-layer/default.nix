
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, message-filters, pluginlib, qt5, rclcpp, rcpputils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-galactic-rqt-image-overlay-layer";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/galactic/rqt_image_overlay_layer/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "22f81b6706562d2cf059f5311597a2f06d04e0edee28f5e05458e0bd94aa5ff1";
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
