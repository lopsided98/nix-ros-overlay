
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-msgs, pluginlib, qt5or6, rclcpp, rclcpp-action, rviz-common }:
buildRosPackage {
  pname = "ros-lyrical-rviz-mbf-plugins";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/lyrical/rviz_mbf_plugins/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "10a88d987603be9e96da13aeaa1bc9059886fc6454bca51229a09331ce32314d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs mbf-msgs pluginlib qt5or6.qtbase rclcpp rclcpp-action rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains rviz plugins for interacting with move base flex.";
    license = with lib.licenses; [ bsd3 ];
  };
}
