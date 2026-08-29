
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, gbenchmark, geometry-msgs, llvmPackages, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs, xsimd, xtensor }:
buildRosPackage {
  pname = "ros-jazzy-nav2-mppi-controller";
  version = "1.3.13-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_mppi_controller/1.3.13-1.tar.gz";
    name = "1.3.13-1.tar.gz";
    sha256 = "f6c4976203d928a418214137f625884b21347af9fc285fafc332b8fa4356fc9c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gbenchmark geometry-msgs llvmPackages.openmp nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs xsimd xtensor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "nav2_mppi_controller";
    license = with lib.licenses; [ mit ];
  };
}
