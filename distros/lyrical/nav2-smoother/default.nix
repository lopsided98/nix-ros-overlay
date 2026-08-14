
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, eigen, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-smoother";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_smoother/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "56bdac7c8db5600cc335d77f065e2326070a2bbb7576fcdc6dc793b9f7485bb4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles eigen nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common rclcpp-action ];
  propagatedBuildInputs = [ backward-ros nav2-core nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util pluginlib rclcpp rclcpp-components rclcpp-lifecycle tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Smoother action interface";
    license = with lib.licenses; [ asl20 ];
  };
}
