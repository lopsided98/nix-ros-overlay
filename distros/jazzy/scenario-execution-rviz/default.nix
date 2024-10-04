
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, py-trees-ros-interfaces, qt5, rclcpp, rviz-common, scenario-execution-interfaces }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-rviz";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_rviz/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "03a6a4320a72c549fadb8e25bf6fd9493cdb75c5285c31d8be386a45ceefebc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs py-trees-ros-interfaces qt5.qtbase rclcpp rviz-common scenario-execution-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The scenario_execution_rviz package";
    license = with lib.licenses; [ asl20 mit ];
  };
}
