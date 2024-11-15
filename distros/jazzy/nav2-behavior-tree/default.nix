
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, behaviortree-cpp, builtin-interfaces, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-nav2-behavior-tree";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_behavior_tree/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "9fd906465bf6738270ad175411de01130656e816d8012f0fa0d7639253841551";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common test-msgs ];
  propagatedBuildInputs = [ behaviortree-cpp builtin-interfaces geometry-msgs lifecycle-msgs nav-msgs nav2-msgs nav2-util rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 behavior tree wrappers, nodes, and utilities";
    license = with lib.licenses; [ asl20 ];
  };
}
