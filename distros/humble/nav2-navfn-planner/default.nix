
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-nav2-navfn-planner";
  version = "1.1.13-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_navfn_planner/1.1.13-1.tar.gz";
    name = "1.1.13-1.tar.gz";
    sha256 = "e6250856919fc3b516f408e32dbb25a96edb42430d58394e4ba87e8b89811594";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-lifecycle tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
