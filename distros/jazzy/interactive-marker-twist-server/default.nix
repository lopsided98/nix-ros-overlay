
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, interactive-markers, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-interactive-marker-twist-server";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_marker_twist_server-release/archive/release/jazzy/interactive_marker_twist_server/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "8f77efac574eaef8d40d721abc4fe23f19f19a64dc3d30b0524cb85589830e85";
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
