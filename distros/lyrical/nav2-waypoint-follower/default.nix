
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, cv-bridge, geographic-msgs, geometry-msgs, nav2-common, nav2-core, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, robot-localization, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-waypoint-follower";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_waypoint_follower/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "f23ed064d7c25692956f80d389bfa144e7c340df8999090b636865ad269b1c68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros cv-bridge geographic-msgs geometry-msgs nav2-core nav2-msgs nav2-ros-common nav2-util pluginlib rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle robot-localization sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A waypoint follower navigation server";
    license = with lib.licenses; [ asl20 ];
  };
}
