
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, behaviortree-cpp, rclcpp-action, nav2-behavior-tree, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, nav2-util, rclcpp, std-srvs, rclcpp-lifecycle, nav-msgs, std-msgs, ament-lint-common, launch-testing, nav2-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-bt-navigator";
  version = "0.2.3-r1";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_bt_navigator/0.2.3-1.tar.gz;
    sha256 = "4514820ec968412df70bfdc88d13027739aae80c69002871cf95c4b515429dce";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-srvs rclcpp-lifecycle nav2-msgs nav2-util nav2-common nav-msgs behaviortree-cpp rclcpp-action rclcpp std-msgs nav2-behavior-tree geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle nav2-msgs nav2-util nav-msgs behaviortree-cpp rclcpp-action rclcpp std-msgs nav2-behavior-tree geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
