
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-msgs, nav2-util, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-nav2-bt-navigator";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_bt_navigator/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "a690d20fe647e873be5b8a5ae582efa54dd0e8d78b0b5f1a8e0b7cb0a7e73b9e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake behaviortree-cpp-v3 nav2-common std-srvs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-util rclcpp rclcpp-action rclcpp-lifecycle std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
