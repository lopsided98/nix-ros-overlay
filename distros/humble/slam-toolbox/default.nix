
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-uncrustify, ament-lint-auto, boost, builtin-interfaces, ceres-solver, eigen, interactive-markers, launch, launch-testing, liblapack, message-filters, nav-msgs, nav2-map-server, pluginlib, qt5, rclcpp, rosidl-default-generators, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, sensor-msgs, std-msgs, std-srvs, suitesparse, tbb_2021_8, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-slam-toolbox";
  version = "2.6.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/humble/slam_toolbox/2.6.6-1.tar.gz";
    name = "2.6.6-1.tar.gz";
    sha256 = "1294e6ee5f96516e2baf92892f53a0fa1a0d95ae056aec4278494d31b1d679ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gtest ament-cmake-uncrustify ament-lint-auto launch launch-testing ];
  propagatedBuildInputs = [ boost builtin-interfaces ceres-solver eigen interactive-markers liblapack message-filters nav-msgs nav2-map-server pluginlib qt5.qtbase rclcpp rosidl-default-generators rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering sensor-msgs std-msgs std-srvs suitesparse tbb_2021_8 tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
