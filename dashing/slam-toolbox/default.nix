
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz-rendering, ament-cmake, rviz-default-plugins, rviz-common, nav2-map-server, suitesparse, boost, ament-cmake-gtest, launch, message-filters, tbb, tf2-sensor-msgs, rclcpp, builtin-interfaces, std-srvs, ceres-solver, tf2-geometry-msgs, tf2-ros, nav-msgs, std-msgs, visualization-msgs, pluginlib, launch-testing, rosidl-default-generators, sensor-msgs, liblapack, tf2, qt5, eigen }:
buildRosPackage {
  pname = "ros-dashing-slam-toolbox";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/dashing/slam_toolbox/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "6aa9203f51296f2fd199bbf5e0b87b7b6ee9603d23e13ec88b85b749bc3c6ee2";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-rendering rviz-default-plugins rviz-common nav2-map-server suitesparse boost message-filters qt5.qtbase tbb tf2-sensor-msgs rclcpp builtin-interfaces ceres-solver std-srvs tf2-geometry-msgs tf2-ros nav-msgs std-msgs visualization-msgs pluginlib rosidl-default-generators sensor-msgs liblapack tf2 eigen ];
  checkInputs = [ launch-testing ament-cmake-gtest launch ];
  propagatedBuildInputs = [ rviz-rendering rviz-default-plugins rviz-common nav2-map-server suitesparse boost message-filters qt5.qtbase tf2-sensor-msgs tbb rclcpp builtin-interfaces ceres-solver std-srvs tf2-geometry-msgs tf2-ros nav-msgs std-msgs visualization-msgs pluginlib rosidl-default-generators sensor-msgs liblapack tf2 eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
