
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-uncrustify, ament-lint-auto, bond, bondcpp, boost, builtin-interfaces, ceres-solver, eigen, geometry-msgs, interactive-markers, launch, launch-testing, liblapack, lifecycle-msgs, llvmPackages, message-filters, nav-msgs, nav2-map-server, onetbb, pluginlib, qt5, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, sensor-msgs, std-msgs, std-srvs, suitesparse, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-slam-toolbox";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/lyrical/slam_toolbox/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "549b3b9cb6a3d9c1ddc7a49775ce379d59c124e1428536c0f8382c95bae19b26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gtest ament-cmake-uncrustify ament-lint-auto launch launch-testing ];
  propagatedBuildInputs = [ bond bondcpp boost builtin-interfaces ceres-solver eigen geometry-msgs interactive-markers liblapack lifecycle-msgs llvmPackages.openmp message-filters nav-msgs nav2-map-server onetbb pluginlib qt5.qtbase rclcpp rclcpp-lifecycle rosidl-default-generators rosidl-default-runtime rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering sensor-msgs std-msgs std-srvs suitesparse tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets";
    license = with lib.licenses; [ "LGPL" ];
  };
}
