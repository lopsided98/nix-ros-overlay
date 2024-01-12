
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, gbenchmark, geometry-msgs, llvmPackages, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs, xsimd, xtensor }:
buildRosPackage {
  pname = "ros-iron-nav2-mppi-controller";
  version = "1.2.5-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_mppi_controller/1.2.5-2.tar.gz";
    name = "1.2.5-2.tar.gz";
    sha256 = "0976d68b073ccf5c77a912411e66495a30e258affa8a0b30fdbb3cb50fd409ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gbenchmark geometry-msgs llvmPackages.openmp nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs xsimd xtensor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''nav2_mppi_controller'';
    license = with lib.licenses; [ mit ];
  };
}
