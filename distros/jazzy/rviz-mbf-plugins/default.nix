
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-msgs, pluginlib, qt6, rclcpp, rclcpp-action, rviz-common }:
buildRosPackage {
  pname = "ros-jazzy-rviz-mbf-plugins";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/jazzy/rviz_mbf_plugins/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "16766a18e3a2589a33dac75b3b3b0e87e2ab60242bc3e590092523a4d5a97f53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs mbf-msgs pluginlib qt6.qtbase rclcpp rclcpp-action rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains rviz plugins for interacting with move base flex.";
    license = with lib.licenses; [ bsd3 ];
  };
}
