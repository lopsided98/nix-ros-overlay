
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-nav2-bt-navigator";
  version = "1.3.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_bt_navigator/1.3.7-1.tar.gz";
    name = "1.3.7-1.tar.gz";
    sha256 = "2ca3ec8b00d9aad76c37ab2de63ff625d10a6281053280e4a08cc0e45ba6e5ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common std-srvs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ behaviortree-cpp geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-lifecycle std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 BT Navigator Server";
    license = with lib.licenses; [ asl20 ];
  };
}
