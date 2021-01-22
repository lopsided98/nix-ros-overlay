
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-uncrustify, ament-lint-auto, boost, builtin-interfaces, ceres-solver, eigen, launch, launch-testing, liblapack, message-filters, nav-msgs, nav2-map-server, pluginlib, qt5, rclcpp, rosidl-default-generators, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, std-srvs, suitesparse, tbb, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-slam-toolbox";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/foxy/slam_toolbox/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "2343c9c190b4a6f2bb32b0067b40b7db64b8287e56db52a62fb19ebe6a5aebb0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gtest ament-cmake-uncrustify ament-lint-auto launch launch-testing ];
  propagatedBuildInputs = [ boost builtin-interfaces ceres-solver eigen liblapack message-filters nav-msgs nav2-map-server pluginlib qt5.qtbase rclcpp rosidl-default-generators rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs std-srvs suitesparse tbb tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
