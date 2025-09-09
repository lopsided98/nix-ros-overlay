
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, eigen, eigen3-cmake-module, geometry-msgs, llvmPackages, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-nav2-mppi-controller";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_mppi_controller/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "ed0bf36e03c446bb6248f22ed9e1be3005b90f3a94d262d31e8bc6161e001acb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles eigen eigen3-cmake-module geometry-msgs llvmPackages.openmp nav-msgs nav2-common nav2-core nav2-costmap-2d nav2-util pluginlib rclcpp rclcpp-lifecycle std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "nav2_mppi_controller";
    license = with lib.licenses; [ mit ];
  };
}
