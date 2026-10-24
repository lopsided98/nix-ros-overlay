
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, bondcpp, diagnostic-updater, lifecycle-msgs, nav2-common, nav2-msgs, nav2-ros-common, nav2-util, rclcpp, rclcpp-components, rclcpp-lifecycle, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-lifecycle-manager";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_lifecycle_manager/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "87dc543662327c3b2699a941e7ebf5403c8c2db5327f230f29e05e5e81b44182";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ backward-ros bondcpp diagnostic-updater lifecycle-msgs nav2-msgs nav2-ros-common nav2-util rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A controller/manager for the lifecycle nodes of the Navigation 2 system";
    license = with lib.licenses; [ asl20 ];
  };
}
