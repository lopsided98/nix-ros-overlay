
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-uncrustify, mbf-msgs, pluginlib, rclcpp, rviz-common }:
buildRosPackage {
  pname = "ros-jazzy-rviz-mbf-plugins";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/jazzy/rviz_mbf_plugins/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f925c36d228d039f1ed9f36624d8897d97f95d9a7a841fa0f4c5657c6ebe64f8";
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
