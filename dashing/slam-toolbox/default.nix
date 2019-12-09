
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tbb, liblapack, ceres-solver, pluginlib, tf2-sensor-msgs, ament-cmake, suitesparse, eigen, tf2, rosidl-default-generators, nav-msgs, sensor-msgs, launch-testing, tf2-geometry-msgs, nav2-map-server, qt5, builtin-interfaces, rclcpp, rviz-rendering, tf2-ros, ament-cmake-gtest, message-filters, std-msgs, std-srvs, boost, launch, rviz-default-plugins, rviz-common, visualization-msgs }:
buildRosPackage {
  pname = "ros-dashing-slam-toolbox";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/dashing/slam_toolbox/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "6aa9203f51296f2fd199bbf5e0b87b7b6ee9603d23e13ec88b85b749bc3c6ee2";
  };

  buildType = "ament_cmake";
  buildInputs = [ tbb liblapack ceres-solver pluginlib tf2-sensor-msgs suitesparse eigen tf2 rosidl-default-generators nav-msgs sensor-msgs tf2-geometry-msgs nav2-map-server builtin-interfaces rclcpp rviz-rendering tf2-ros message-filters std-msgs std-srvs boost qt5.qtbase rviz-default-plugins rviz-common visualization-msgs ];
  checkInputs = [ launch-testing ament-cmake-gtest launch ];
  propagatedBuildInputs = [ tbb liblapack ceres-solver pluginlib tf2-sensor-msgs suitesparse eigen tf2 rosidl-default-generators nav-msgs sensor-msgs tf2-geometry-msgs nav2-map-server builtin-interfaces rclcpp rviz-rendering tf2-ros message-filters std-msgs std-srvs boost qt5.qtbase rviz-default-plugins rviz-common visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
