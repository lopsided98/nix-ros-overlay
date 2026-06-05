
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, generate-parameter-library, geometry-msgs, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools }:
buildRosPackage {
  pname = "ros-jazzy-twist-mux-controller";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/husarion/husarion_controllers-release/archive/release/jazzy/twist_mux_controller/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "b677346e19df9ee85c6ff4e7c466d1024805e4d6f1da0969ab37c754e1857d97";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface generate-parameter-library geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for managing multiple twist inputs";
    license = with lib.licenses; [ asl20 ];
  };
}
