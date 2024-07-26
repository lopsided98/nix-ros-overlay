
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-manager, gz-plugin-vendor, gz-sim-vendor, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-gz-ros2-control";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/jazzy/gz_ros2_control/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "020f07dbc6ad6471b9c452d43b53a70c38315e244ac6abc94d57ddde96738d57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp controller-manager gz-plugin-vendor gz-sim-vendor hardware-interface pluginlib rclcpp rclcpp-lifecycle yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo ros2_control package allows to control simulated robots using ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
