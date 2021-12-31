
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-nav2-navfn-planner";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_navfn_planner/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "48e09a42db2c35079a21fc89bb87e5b0a8cf181c87469846a4b3ade07d5e756f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-lifecycle tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
