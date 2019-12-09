
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, tf2, nav2-util, nav2-msgs, nav-msgs, ament-lint-auto, rclcpp-lifecycle, launch-testing, ament-lint-common, tf2-geometry-msgs, nav2-common, builtin-interfaces, rclcpp, ament-cmake-gtest, tf2-ros, behaviortree-cpp, std-msgs, std-srvs, lifecycle-msgs, rclcpp-action, launch, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-dashing-nav2-behavior-tree";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_behavior_tree/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "df5dd5481d273c998f710fb5f46393db784d6206b5d8d36cbc54ac0ea94ecd96";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action rclcpp-lifecycle geometry-msgs nav-msgs rclcpp std-msgs std-srvs tf2-geometry-msgs nav2-common lifecycle-msgs tf2 nav2-util builtin-interfaces nav2-msgs tf2-ros behaviortree-cpp ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-action rclcpp-lifecycle geometry-msgs nav-msgs rclcpp std-msgs std-srvs tf2-geometry-msgs lifecycle-msgs tf2 nav2-util builtin-interfaces nav2-msgs tf2-ros behaviortree-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
