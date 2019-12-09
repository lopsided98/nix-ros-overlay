
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, nav2-util, nav2-msgs, nav-msgs, ament-lint-auto, rclcpp-lifecycle, launch-testing, nav2-behavior-tree, ament-lint-common, nav2-common, rclcpp, tf2-ros, ament-cmake-gtest, behaviortree-cpp, std-msgs, std-srvs, rclcpp-action, launch, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-dashing-nav2-bt-navigator";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_bt_navigator/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "871025f1b32735507738168ac0e47b026b0f4bc1f996fa2ddcd6ea9c01682e0e";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action rclcpp-lifecycle geometry-msgs nav-msgs std-msgs std-srvs nav2-behavior-tree nav2-common nav2-util rclcpp nav2-msgs tf2-ros behaviortree-cpp ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-action rclcpp-lifecycle geometry-msgs nav-msgs std-msgs nav2-behavior-tree nav2-util rclcpp nav2-msgs tf2-ros behaviortree-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
