
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-uncrustify, mbf-msgs, pluginlib, rclcpp, rviz-common }:
buildRosPackage {
  pname = "ros-humble-rviz-mbf-plugins";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/rviz_mbf_plugins/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "7cac8a6b836ef061c8a44ad22edc78d5edd8b4728c80c7c8f0a20cf3ab423ded";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-auto ament-cmake-uncrustify ];
  propagatedBuildInputs = [ mbf-msgs pluginlib rclcpp rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains rviz plugins for interacting with move base flex.";
    license = with lib.licenses; [ bsd3 ];
  };
}
