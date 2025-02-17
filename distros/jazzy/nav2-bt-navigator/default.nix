
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-nav2-bt-navigator";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_bt_navigator/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "07913969d664c7a5003a480e14518b16c81280ffdc864234fb59ecb8e4fe9ca7";
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
