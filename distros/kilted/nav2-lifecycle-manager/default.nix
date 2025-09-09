
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bondcpp, diagnostic-updater, geometry-msgs, lifecycle-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-nav2-lifecycle-manager";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_lifecycle_manager/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "a5c56feb90f6e06b40ad788f0982dcdaf1df3c5f832f2dc3d10c45568a014a56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ bondcpp diagnostic-updater geometry-msgs lifecycle-msgs nav2-msgs nav2-util rclcpp rclcpp-action rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A controller/manager for the lifecycle nodes of the Navigation 2 system";
    license = with lib.licenses; [ asl20 ];
  };
}
