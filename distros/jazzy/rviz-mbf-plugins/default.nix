
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-msgs, pluginlib, qt5, rclcpp, rclcpp-action, rviz-common }:
buildRosPackage {
  pname = "ros-jazzy-rviz-mbf-plugins";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/jazzy/rviz_mbf_plugins/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "cc4bbac8c640f765c66a540b3fc39ada6f86b16b847c75ba834f9b91f4ecdbc0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs mbf-msgs pluginlib qt5.qtbase rclcpp rclcpp-action rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains rviz plugins for interacting with move base flex.";
    license = with lib.licenses; [ bsd3 ];
  };
}
