
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, bondcpp, diagnostic-updater, geometry-msgs, lifecycle-msgs, nav2-common, nav2-msgs, nav2-ros-common, nav2-util, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-lifecycle-manager";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_lifecycle_manager/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "c6713457b688ed0a91b51b50c579019b08907ea50652e76300d38f6b720ef732";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ backward-ros bondcpp diagnostic-updater geometry-msgs lifecycle-msgs nav2-msgs nav2-ros-common nav2-util rclcpp rclcpp-action rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A controller/manager for the lifecycle nodes of the Navigation 2 system";
    license = with lib.licenses; [ asl20 ];
  };
}
