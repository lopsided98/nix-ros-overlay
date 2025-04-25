
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-uncrustify, ament-lint-auto, bond, bondcpp, boost, builtin-interfaces, ceres-solver, eigen, interactive-markers, launch, launch-testing, liblapack, lifecycle-msgs, message-filters, nav-msgs, pluginlib, qt5, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, sensor-msgs, std-msgs, std-srvs, suitesparse, tbb_2021_11, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-slam-toolbox";
  version = "2.8.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/jazzy/slam_toolbox/2.8.3-1.tar.gz";
    name = "2.8.3-1.tar.gz";
    sha256 = "b97fe430e1b7b1c4e2ad0838e4138d6637577e8f0dca6771ca1973223416f742";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gtest ament-cmake-uncrustify ament-lint-auto launch launch-testing ];
  propagatedBuildInputs = [ bond bondcpp boost builtin-interfaces ceres-solver eigen interactive-markers liblapack lifecycle-msgs message-filters nav-msgs pluginlib qt5.qtbase rclcpp rclcpp-lifecycle rosidl-default-generators rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering sensor-msgs std-msgs std-srvs suitesparse tbb_2021_11 tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets";
    license = with lib.licenses; [ "LGPL" ];
  };
}
