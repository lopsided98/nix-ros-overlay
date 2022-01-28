
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, qt5, rclcpp, rcpputils, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-galactic-rqt-image-overlay-layer";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-sports/rqt_image_overlay-release/archive/release/galactic/rqt_image_overlay_layer/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "45f842bcefbcf76b7e39366fb17ee88fa281bf7f3e53b718a34f608363f58156";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rclcpp rcpputils rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides an rqt_image_overlay_layer plugin interface, and a template impelementation class'';
    license = with lib.licenses; [ asl20 ];
  };
}
