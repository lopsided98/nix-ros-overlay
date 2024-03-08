
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, message-filters, pluginlib, qt5, rclcpp, rcpputils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-rolling-rqt-image-overlay-layer";
  version = "0.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/rolling/rqt_image_overlay_layer/0.3.1-3.tar.gz";
    name = "0.3.1-3.tar.gz";
    sha256 = "c0fc3dfef2423ba10a700c2b78cfbab6a64afd4a5b4e8e764a87248847147ef0";
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
