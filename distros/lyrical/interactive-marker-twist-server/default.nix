
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, interactive-markers, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-interactive-marker-twist-server";
  version = "2.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_marker_twist_server-release/archive/release/lyrical/interactive_marker_twist_server/2.1.0-4.tar.gz";
    name = "2.1.0-4.tar.gz";
    sha256 = "e9ff8152613a2269ed8ac98317803300400d4b89b6c55e5e61eac0d76c5e91e7";
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
