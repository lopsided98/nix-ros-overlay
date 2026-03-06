
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-msgs, pluginlib, qt5, rclcpp, rclcpp-action, rviz-common }:
buildRosPackage {
  pname = "ros-humble-rviz-mbf-plugins";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/rviz_mbf_plugins/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "f7d99a0640d25f6ffc5b82346f836663b95ef6eb96df5336b7010797bf96c43f";
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
