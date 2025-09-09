
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-color-names";
  version = "0.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_names-release/archive/release/kilted/color_names/0.0.3-6.tar.gz";
    name = "0.0.3-6.tar.gz";
    sha256 = "8097d192512972d5cb9c85653099bea983c174bde5acc2a04d07a55cbb95724c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ rclcpp rviz2 std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The color_names package";
    license = with lib.licenses; [ asl20 ];
  };
}
