
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, builtin-interfaces, ceres-solver, eigen, launch, launch-testing, liblapack, message-filters, nav-msgs, nav2-map-server, pluginlib, qt5, rclcpp, rosidl-default-generators, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, std-srvs, suitesparse, tbb, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-dashing-slam-toolbox";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/dashing/slam_toolbox/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "756cda804b1dcf1e0a9a3f659f841fa45a899a19152c6c2b8ca49893099c115f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest launch launch-testing ];
  propagatedBuildInputs = [ boost builtin-interfaces ceres-solver eigen liblapack message-filters nav-msgs nav2-map-server pluginlib qt5.qtbase rclcpp rosidl-default-generators rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs std-srvs suitesparse tbb tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
