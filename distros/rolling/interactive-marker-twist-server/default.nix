
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, interactive-markers, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-interactive-marker-twist-server";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_marker_twist_server-release/archive/release/rolling/interactive_marker_twist_server/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "66b1b4b1ff3046dd23af3f88373f1fe6e7cf645c1882e2878e93bef3a382a060";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers rclcpp tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interactive control for generic Twist-based robots using interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
