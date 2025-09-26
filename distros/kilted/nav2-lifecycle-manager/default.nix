
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bondcpp, diagnostic-updater, geometry-msgs, lifecycle-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-nav2-lifecycle-manager";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_lifecycle_manager/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "2db5c7fd72b67510acb54ad65d31b2471fd19a70304dcc7921acd3675583add4";
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
