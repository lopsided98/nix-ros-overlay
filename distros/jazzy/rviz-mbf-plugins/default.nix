
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-msgs, pluginlib, qt5or6, rclcpp, rclcpp-action, rviz-common }:
buildRosPackage {
  pname = "ros-jazzy-rviz-mbf-plugins";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/jazzy/rviz_mbf_plugins/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "30554dc5504deeb5a55e325dc29c696311eb03632598340bd5ceda294474715e";
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
