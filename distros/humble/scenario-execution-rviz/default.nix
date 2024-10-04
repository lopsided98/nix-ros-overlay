
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, py-trees-ros-interfaces, qt5, rclcpp, rviz-common, scenario-execution-interfaces }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-rviz";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_rviz/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "2ff2f9afbf2a3eed7936284282ca289d26cfb9a473981615eacf75ce4f8dff2d";
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
