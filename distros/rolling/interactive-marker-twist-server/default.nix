
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, interactive-markers, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-interactive-marker-twist-server";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_marker_twist_server-release/archive/release/rolling/interactive_marker_twist_server/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "280a0df7e64616c4eb52bc4ed945704b8e3f8d86ffb805c8c7adf2f1e5f4d58d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers rclcpp tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interactive control for generic Twist-based robots using interactive markers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
