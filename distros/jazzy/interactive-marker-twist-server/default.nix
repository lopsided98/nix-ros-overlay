
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, interactive-markers, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-interactive-marker-twist-server";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_marker_twist_server-release/archive/release/jazzy/interactive_marker_twist_server/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "504d092ef4c9d46eda34010f66b73096446a4d8856159d448b3bd622fe3c2061";
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
