
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-nav2-bt-navigator";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_bt_navigator/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "a72a606a92b8b894ad95659f525e4765bc9a7a28299662c12196869e8f5d2bd4";
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
