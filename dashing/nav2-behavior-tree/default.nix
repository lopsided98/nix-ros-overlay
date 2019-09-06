
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, behaviortree-cpp, rclcpp-action, lifecycle-msgs, rosidl-default-runtime, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, nav2-util, rclcpp, builtin-interfaces, std-srvs, rclcpp-lifecycle, tf2-geometry-msgs, std-msgs, ament-lint-common, launch-testing, rosidl-default-generators, nav2-msgs, tf2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-behavior-tree";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_behavior_tree/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "b09ca5eae89e3b55f66d0360da2f0d9dfc88b23d8148dd62b757b62205062ba1";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces std-srvs rclcpp-lifecycle tf2-geometry-msgs rosidl-default-generators nav2-msgs nav2-util nav2-common tf2 behaviortree-cpp rclcpp-action lifecycle-msgs rclcpp std-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp-lifecycle tf2-geometry-msgs nav2-msgs nav2-util tf2 behaviortree-cpp rclcpp-action lifecycle-msgs rclcpp std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
